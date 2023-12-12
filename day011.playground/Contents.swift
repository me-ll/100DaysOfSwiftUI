import Cocoa
import Foundation

// Access control
struct BankAccount {
    // private: make you stop modifying the variable outside of the struct
    // fleprivate: you cannnot do anything outside of the file
    // private(set): you cannnot modify the value but can see it
    private var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)
if (success) {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

// account.funds -= 1000 // private keyword prevent you from doing this kinds of things

// static: you do not have to make an instance, which means the data doesn't exsist in various way: only one struct exists
// mutating key word is not necessary
struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)
School.add(student: "Taylor Swift 2")
print(School.studentCount)

// static -> non-static: you cannnot access
// non-static -> static: you can read the values

// self: the current value of a struct
// Self: the current type of struct

struct AppData {
    static let version = "1.3 beta 2"
    static let homeURL = "https://..."
}

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "test", password: "password...")
}

// Checkpoint 6
struct Car {
    let model: String
    let seats: Int
    var currentGear: Int
    
    mutating func switchGear(to: String) -> Bool {
        
        if to == "Up" {
            if (self.currentGear + 1) >= 10 {
                print("Failed to up the gear")
                return false
            }
            self.currentGear += 1
            print("Current gear: \(self.currentGear)")
            return true
            
        } else if to == "Down" {
            if (self.currentGear - 1) <= -1 {
                print("Failed to down the gear")
                return false
            }
            self.currentGear -= 1
            print("Current gear: \(self.currentGear)")
            return true
        }
        
        print("Invalid move")
        return false
    }
}

var car = Car(model: "Civic", seats: 4, currentGear: 1)
car.switchGear(to: "Up") // Current gear: 2
car.switchGear(to: "Down") // Current gear: 1
car.switchGear(to: "Down") // Current gear: 0
car.switchGear(to: "Down") // Failed to down the gear

