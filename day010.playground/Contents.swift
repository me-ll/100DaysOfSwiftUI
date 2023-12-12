import Cocoa

// you use a capital case for the name of structs
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title) // Red
red.printSummary() // Red (2012) by Taylor Swift

struct Employee {
    // name, vacationRemaining: These variable and constant are called "propaties" of struct
    let name: String
    var vacationRemaining: Int = 14
    
    // takeVacation: This is called "method"
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days // you cannnot change the value without writing "mutating" before "func"
            print("I'm going on vacation!")
            print("Day remaining: \(vacationRemaining)")
        } else {
            print("There aren't enough days remaining.")
        }
    }
}

// archer: This is called "instance", which is a variable or constant made from struct
// Employee(name: "Starling Archer", vacationRemaining: 10): This is called "initializer"
var archer = Employee(name: "Starling Archer", vacationRemaining: 10) // = Employee.init(name: "Starling Archer", vacationRemaining: 10)
archer.takeVacation(days: 3)
print(archer.vacationRemaining) // 7

var nancy = Employee(name: "naucy")
print(nancy.vacationRemaining)

struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}
var alice = Employee2(name: "Alice", vacationTaken: 3)
alice.vacationTaken += 5
alice.vacationRemaining = 1 // newValue?
print(alice.vacationAllocated)

// propaty observers
struct Game {
    var score = 0 {
        didSet {
            // This would be excuted after a value is inputed into score
            print("Score is now \(score)")
        }
    }
}
var game = Game()
game.score += 10
game.score += 3

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old vallue was \(oldValue)")
        }
    }
}
var app = App()
app.contacts.append("Adrian E")

// initializers
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)
