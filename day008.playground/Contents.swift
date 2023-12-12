import Cocoa

// default values for parameters
func printTimesTables(number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}
printTimesTables(number: 5, end: 3)
printTimesTables(number: 5)

// error handle
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short}
    if password == "12345" { throw PasswordError.obvious}
    
    if password.count < 8 {
        return "OK"
    } else if (password.count < 10) {
        return "Good"
    } else {
        return "Excelent"
    }
}

// checkPassword("a")
// Playground execution terminated: An error was thrown and was not caught:
// __lldb_expr_77.PasswordError.short

let s = "12345"
do {
    let result = try checkPassword(s)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password")
} catch {
    print("There was an error: \(error.localizedDescription)")
}

// if the error doesn't happen 100%, you can use "!" and delete do-catch, which is not in this case
//let result = try! checkPassword(s)
//print("Password rating: \(result)")

// Checkpoint4
enum squareRootError: Error {
    case outOfRange, noRoot
}

func getSquareRoot(_ x: Int) throws -> Int {
    if (x < 1 || x > 10000) {
        throw squareRootError.outOfRange
    }
    
    var squareRootDictionary: [Int: Int] = [:]
    for i in 1...100 {
        squareRootDictionary[i * i] = i
    }
    
    if (squareRootDictionary.keys.contains(x)) {
        return squareRootDictionary[x]!
    }
    
    throw squareRootError.noRoot
}

let number = 7
do {
    let r = try getSquareRoot(number);
    print(r)
} catch squareRootError.outOfRange {
    print("The number is out Of Range")
} catch squareRootError.noRoot {
    print("There is no root.")
} catch {
    print("Error")
}
