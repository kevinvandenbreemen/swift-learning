class MainDriver{
    func printUsage(){
        print("Simple Linear Regression in Swift")
        print("-x\tRequired\tComma-separated list of X values")
        print("-y\tRequired\tComma-separated list of y values")
    }


}

let mainDriver = MainDriver()

var xVals = [String]()
var yVals = [String]()
for argument in CommandLine.arguments{
    print("arg=\(argument)")
}

if xVals.isEmpty || yVals.isEmpty{
    mainDriver.printUsage()
}

// let arguments = C_ARGV
// print(arguments)