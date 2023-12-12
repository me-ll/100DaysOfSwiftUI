import Cocoa

// if
let score = 85
if score > 80 {
    print("Dreat job!")
}

let country = "Canada"
if country == "Australia" {
    print("G' day!")
}

var name = "Taylor"
if name.isEmpty {
    name = "Anomynous"
}

// if - multiple conditions
let age = 16
if age >= 18 {
    print(".")
} else if age > 16 {
    print("...")
} else {
    print(".....")
}

let temp = 25
if temp > 20 && temp < 30 {
    print("It's a nice day")
}

let username = 14
let hasParentalConsent = true
if age >= 18 || hasParentalConsent == true {
    print("You can buy the game.")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.airplane
if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there is a bike path")
} else if transport == .car {
    print("TIme to get stuck is traffic")
} else {
    print("I'm going to hire a scooter now")
}

// switch - you have to check every possibility
// Swift switch only match one condition and it doesn't carry on like other languages.
enum  Weather {
    case sun, rain, wind, show, unknown
}
let forcast = Weather.sun

switch forcast {
case .sun:
    print("It should be a nice day")
case .rain:
    print("Pack an umbrella")
case .wind:
    print("...")
case .show:
    print("...")
case .unknown:
    print("...")
}

let color = "Red"
switch color {
case "Red":
    print("Red")
case "Blue":
    print("Blue")
default:
    print("other")
}

// falthrough make the code keep continuing
let day = 5
switch day {
case 5:
    print("5")
    fallthrough
case 4:
    print("4")
    fallthrough
default:
    print("other")
}
// 5
// 4
// other

// ternary conditional operator
let year = 2023
let isThisYear = year == 2023 ? "Yes" : "No"
