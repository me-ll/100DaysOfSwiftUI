import Cocoa

// functions
func showWelcome() {
    print("Welcome")
}
showWelcome()

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}
printTimesTables(number: 5, end: 3)

let root = sqrt(2)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}
let result = rollDice()

func isUsedTheSameLetters(str1: String, str2: String) -> Bool {
    // you don't have to write "return" if there is only 1 line.
    str1.sorted() == str2.sorted()
}
print(isUsedTheSameLetters(str1: "abc", str2: "cbd"))

// returning multi values with tuples
func getUser() -> (firstName: String, lastName: String) {
//    (firstName: "Taylor", lastName: "Swift")
    
    // you can omit the names of tuples because it's written in return type
    ("Taylor", "Swift")
}
let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")
// if you use dictionaries instead of tuples,
// you have to write default values even though you know both of the values exist.

// you can put the result lije this and if you do not need one of them you can use "_"
let (firstName, _) = getUser()
print("Name: \(firstName)")


func getUser2() -> (String, String) {
    ("Taylor", "Swift")
}
let user2 = getUser2()
print("Name: \(user.0) \(user.1)") // you have to use numbers if you don't specify the name in return definition of the function

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO";
let result2 = isUppercase(string) // you can ommit the label because "_" is used in the functino

// external parameter name vs internal parameter name
func printTimesTable2(for number: Int) {
    for i in 1...12 {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTable2(for: 5) // you use "for" outside of the function but you use number inside of the function
