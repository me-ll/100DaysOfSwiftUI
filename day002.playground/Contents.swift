import Cocoa

// booleans
let goodDogs = true
let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false;
isAuthenticated = !isAuthenticated
print(isAuthenticated) // true

var gameOver = false
gameOver.toggle()
print(gameOver) // true

// joining strings together
let first = "Hello, "
let second = "world"
let text = first + second + "!"
print(text) // Hello, world!

// string interpolation
let name = "Taylor"
let age = 25
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message) // Hello, my name is Taylor and I'm 25 years old.

let massage2 = "I'm " + String(age) + "years old."
print(massage2) // I'm 25years old.

// Checkpoint 1
let c = 30.0;
let f = c * 9 / 5 + 32

// °: option + shift + 8
print("\(c)C° is \(f)F°") // 30.0C° is 86.0F°


