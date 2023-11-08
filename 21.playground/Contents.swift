import Foundation

var winner = 0



// Create a DispatchQueue for concurrent execution
let firstNumber = DispatchQueue(label: "რიცხვი 1", attributes: .concurrent)
let secondNumber = DispatchQueue(label: "რიცხვი 2", attributes: .concurrent)


// Dispatch a function to the concurrent queue
firstNumber.async {
    let localvalue = winner
    Thread.sleep(forTimeInterval: 0.1)
    winner = calculateFactorial()
}

secondNumber.async {
    let localvalue = winner
    Thread.sleep(forTimeInterval: 0.1)
    winner = calculateFactorial()
}




func calculateFactorial() -> Int {
    let randomNumber = Int.random(in: 20...50)
    print("random number is: \(randomNumber)")
    
    var factorial = 1
    for i in 2...randomNumber {
        factorial *= i
        
    }
    return factorial
}


print("გამარჯვებული მნიშვნელობა: \(winner)")
