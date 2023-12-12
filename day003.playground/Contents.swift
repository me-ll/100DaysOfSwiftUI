import Cocoa

// arrays
// you have to put the same type values in arrays
var names = ["John", "Paul"]
print(names[0]) // John
names.append("Vivian")
print(names) // ["John", "Paul", "Vivian"]

let numbers = [4, 8, 15]

var scores = Array<Int>()
scores.append(10)
scores.append(100)
print(scores) // [10, 100]

var albusm = Array<String>()
albusm.append("Red")

var albusm2 = [String]()
albusm2.append("Fearless")

var characters = ["Lana", "Pam", "Ray", "Nancy"]
print(characters.count) // 4
characters.remove(at: 2)
print(characters.count) // 3
print(characters) // ["Lana", "Pam", "Nancy"]
characters.removeAll()
print(characters.count) // 0

let bondMovies = ["Casino Royal", "No Time to Die"];
print(bondMovies.contains("Flozen")) // false

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted()) // ["Budapest", "London", "Rome", "Tokyo"]

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresident = presidents.reversed()
print(reversedPresident) // ReversedCollection<Array<String>>(_base: ["Bush", "Obama", "Trump", "Biden"])

// dictionaries
let employee = [
    "name": "Taylor Swift",
    "job": "Singer"
]
print(employee["name"]) // ⚠️Optional("Taylor Swift")
print(employee["aaa"]) // ⚠️nil
print(employee["name", default: "unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Yao Ming"] = 1
print(heights) // ["Yao Ming": 1]

// sets
// set doesn't care the order and cannnot have the duplicated value
// using set is faster when the code runs
let actors = Set([
    "Tom Cruise",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])
print(actors) // ["Tom Cruise", "Samuel L Jackson", "Nicolas Cage"]

// "insert" is used instead of "apend" because the order doesn't matter
var actors2 = Set<String>()
actors2.insert("Denzel Washington")
actors2.insert("Tom Cruise")
print(actors2) // ["Denzel Washington", "Tom Cruise"]

// enums
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
var day = Weekday.monday
day = Weekday.tuesday


enum Weekday2 {
    case monday, tuesday, wednesday, thursday, friday
}
var day2 = Weekday2.monday
day2 = .tuesday // Weekday2 can be omitted
