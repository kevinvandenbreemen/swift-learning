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
    

}

print(
    LinearRegressionExperiment(xVals:[1.0, 2.0], yVals:[10.0, 10.0]).evaluate(
    hVector: [1.0, 1.0], xVal: 1.0
)
)