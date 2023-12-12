import Cocoa
import Foundation

// Classes
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// Inherit
class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours.")
    }
}

class Developer: Employee {
    // you can use "hours" because you inferit Employee class
    func work() {
        print("I'm writing code for \(hours) hours")
    }
}

// final: you cannnot inherit Manager class
final class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours")
    }
    
    // you have to use "override" method when you want to custom the method in parent class
    // but if the parameters are different, you don't need to write override
    override func printSummary() {
        print("I'm a manager but...")
    }
}

let robert = Developer(hours: 3)
robert.work() // I'm writing code for 3 hours
robert.printSummary() // I work 3 hours.

let joseph = Manager(hours: 5)
joseph.work() // I'm going to meetings for 5 hours
joseph.printSummary() // I'm a manager but...

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        
        // you jave to write this for the parent class init
        super.init(isElectric: isElectric)
    }
}

// Copy classes
// classes share the data
class User {
    var username = "Anonymous"
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"

print(user1.username) // Taylor
print(user2.username) // Taylor


// deinitializer
class User2 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive")
    }
    
    // deinitializer doesn't have any parameter
    deinit {
        print("User \(id): I'm dead")
    }
}

for i in 1...2 {
    let user = User2(id: i)
    print("User \(user.id): I'm in controll")
}
//User 1: I'm alive
//User 1: I'm in controll
//User 1: I'm dead
//User 2: I'm alive
//User 2: I'm in controll
//User 2: I'm dead

// Checkpoint 7
class Animal {
    let legs: Int
    
    init (legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Bowwow!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Bowwow! I'm Corgi.")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Bowwow! I'm Poodle.")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init (legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        var str = "not tame"
        if self.isTame {
            str = "tame"
        }
        
        print("Meow! I'm \(str).")
    }
}

class Persian: Cat {
    override func speak() {
        var str = "not tame"
        if self.isTame {
            str = "tame"
        }

        print("Meow! I'm \(str) and I'm Persian.")
    }
}

class Lion: Cat {
    override func speak() {
        var str = "not tame"
        if self.isTame {
            str = "tame"
        }

        print("Meow! I'm \(str) and I'm Lion.")
    }
}

var animal = Animal(legs: 4)

var dog = Dog(legs: 4)
var corgi = Corgi(legs: 4)
var poodle = Poodle(legs: 4)
dog.speak() // Bowwow!
corgi.speak() // Bowwow! I'm Corgi.
poodle.speak() // Bowwow! I'm Poodle.

var cat = Cat(legs: 4, isTame: true)
var persian = Persian(legs: 4, isTame: false)
var lion = Lion(legs: 4, isTame: true)
cat.speak() // Meow! I'm tame.
persian.speak() // Meow! I'm not tame and I'm Persian.
lion.speak() // Meow! I'm tame and I'm Lion.
