import Foundation   //  Need this in order to use string methods etc.

class MainDriver{

    var xVals = [Double]()
    var yVals = [Double]()

    func printUsage(){
        print("Simple Linear Regression in Swift")
        print("x=12,13,...\tRequired\tComma-separated list of X values")
        print("y=42.1,7...\tRequired\tComma-separated list of y values")
    }


}

let mainDriver = MainDriver()

var xVals = [String]()
var yVals = [String]()
for argument in CommandLine.arguments{
    print("arg=\(argument)")
    if argument.hasPrefix("x="){
        let arg = String(argument.dropFirst(2)) //  Cheesy - get rid of x/y = bit
        for item in (arg.split{$0 == ","}){
            xVals.append(String(item))
        }
    }
    else if argument.hasPrefix("y="){
        let arg = String(argument.dropFirst(2))
        for item in (arg.split{$0 == ","}){
            yVals.append(String(item))
        }
    }

}

//  Now parse those arguments


if xVals.isEmpty || yVals.isEmpty{
    mainDriver.printUsage()
}

print(xVals)
print(yVals)

// let arguments = C_ARGV
// print(arguments)