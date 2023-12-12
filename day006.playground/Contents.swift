import Cocoa

// for
let platforms = ["iOS", "macOS"]
for os in platforms {
    print("Swift works great on \(os).")
}
// Swift works great on iOS.
// Swift works great on macOS.

// print numbers from 1 to 12
for i in 1...12 {
    print(i)
}

// print numbers from 1 to 4
for i in 1..<5 {
    print(i)
}

// you can use "_" when you need a variable for index
for _ in 1...5 {
    print("...")
}

let names = ["Piper", "Alex", "Suzanne"]
print(names[0])
print(names[1...2]) // ["Alex", "Suzanne"]

// while
var countdown = 10
while countdown > 0 {
    print("countdown: \(countdown)")
    countdown -= 1
}

// random numbers
let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)


// continue
let filenames = ["me.jpg", "work.txt", "sophie.jpg"]
for filename in filenames {
    if filename.hasSuffix("jpg") == false {
        continue
    }
    print(filename)
}
// me.jpg
// sophie.jpg

// break
let num1 = 4
let num2 = 14
var multiples = [Int]()
for i in 1...100_000 {
    if i.isMultiple(of: num1) && i.isMultiple(of: num2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}
print(multiples) // [28, 56, 84, 112, 140, 168, 196, 224, 252, 280]

// checkpoint3
for i in 1...100 {
    var result = ""
    if i.isMultiple(of: 3) {
        result += "Fizz"
    }
    if i.isMultiple(of: 5) {
        result += "Buzz"
    }
    if (result == "") {
        result += "\(i)"
    }
    print(result)
}
