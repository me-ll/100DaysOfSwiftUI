import Cocoa

func greetUser() {
    print("Hi there!")
}
greetUser()

// It's copying the function.
// You don't need "()" in greetUser. Without "()" means you're copying a function directory and it's not called yet.
var greetCopy = greetUser
greetCopy()


// Closures
// You can put the function in the constant
let sayHello = {
    print("Hi there!!")
}
sayHello()

// When you need parameters in closures.. you have to write them in {}
// After in, the acrual codes begin.
let sayHello2 = { (name: String) -> String in
    "Hi \(name)!!"
}
sayHello2("Nancy")


var greetCopy2: () -> Void = greetUser;

func getUserData(for id: Int) -> String {
    if id == 1 {
        return "Alice"
    }
    return "Anonymous"
}

let data: (Int) -> String = getUserData
let user = data(1) // you don't need to write "for"
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany"]
let sortedTeam = team.sorted()
print(sortedTeam) // ["Gloria", "Piper", "Suzanne", "Tiffany"]

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

// you can pass the function as an arg to the sorted function
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam) // ["Suzanne", "Gloria", "Piper", "Tiffany"]

let captainFirstTeam2 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})
print(captainFirstTeam2) // ["Suzanne", "Gloria", "Piper", "Tiffany"]

// you can delete types
// you can also delete "by:" and "()" of sorted function
// shorthand syntax: $0 means name1 in the previous code
let sorted = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}

let reverseTeam = team.sorted {
    return $0 > $1
}


// how to accept functions as parameters
func generator() -> Int {
    Int.random(in: 1...20)
}

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

let newRolls = makeArray(size: 50, using: generator)
print(newRolls)

// Checkpoint5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
let luckyNumbersFiltered = luckyNumbers.filter {
    !$0.isMultiple(of: 2)
}.sorted().map {"\($0) is a lucky number"}

for v in luckyNumbersFiltered {
    print(v)
}
