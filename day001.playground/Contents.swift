import Cocoa

// variable
var name = "Ted"
name = "Rebecca"

// constant
let character = "Daphne"

// strings
let line = "Then he tapped a sign staying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple engineer
"""

let filename = "paris.jpg"

print(line.count) // 56
print(line.uppercased()) // THEN HE TAPPED A SIGN STAYING "BELIEVE" AND WALKED AWAY.
print(movie.hasPrefix("A day")) // true
print(filename.hasSuffix(".jpg")) // true

// numbers
let score = 10
let reallyBig = 100_000_000 // It means 100000000. Swift ignores "_" and treat it as a number.
let reallyBig2 = 1_00_____0 // 1000

let number = 120
print(number.isMultiple(of: 3)) // true

// decimal numbers
let decimalNumber = 0.1 + 0.2
print(decimalNumber) // 0.30000000000000004

let a = 1
let b = 2.0
let c = a + Int(b)
let d = Double(a) + b
