class LinearRegressionExperiment{

    var xVals:[Double]
    var yVals:[Double]
    
    init(xVals:[Double], yVals:[Double]) {
        self.xVals = xVals
        self.yVals = yVals
    }

    func tryHyphthesis(theta0:Double, theta1:Double) -> Double {
        return Double(0.0)
    }

    func evaluate(hVector:[Double], xVal:Double) -> Double{
        return hVector[0] + hVector[1]*xVal
    }
    
    /// Work out mean square error using the given hypothesis vector
    func calculateError(hVector:[Double])->Double{

        var sum:Double = 0.0

        var counter = 0
        for x in xVals {
            let hX = evaluate(hVector:hVector, xVal:x)
            let yX = yVals[counter]
            var error = hX - yX
            error = error * error
            sum += error

            counter+=1
        }

        return sum/(2.0*Double((yVals.count)))
    }

}

let experiment = LinearRegressionExperiment(
    xVals:[5.0, 3.0, 0.0, 4.0],
    yVals:[4.0, 4.0, 1.0, 3.0]
)

print(
    experiment.evaluate(
        hVector: [1.0, 1.0], xVal: 1.0
)
)

print("Errors:  \(experiment.calculateError(hVector:[0.0, 1.0]))")
