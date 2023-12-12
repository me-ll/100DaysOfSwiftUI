import Cocoa

// anotations
let surname: String = "Lasso"
let score: Double = 0
let isAuthenticated: Bool = true

let albums: [String] = ["Red", "Fearless"]
let user: [String: String] = ["id": "@..."]
let books: Set<String> = Set([
    "The Bluest Eye",
    "Foundation"
])

// empty array
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}
var style: UIStyle = .dark;

// Checkpoint2
let fruits: [String] = ["apple", "apple", "peach", "pear"]
print(fruits.count) // 4
let fruiesSet: Set<String> = Set(fruits); // you can make set with array
print(fruiesSet.count) // 3
