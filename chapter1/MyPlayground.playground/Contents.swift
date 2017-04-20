import Cocoa

let MY_CONST: Float = 42

print(MY_CONST)

print("the value of MY_CONST is: " + String(MY_CONST))

//varibles/constants/bears, ohh my
let name = "Wes"
let apples = 3.45
let oranges = 5.3
let appleSummary = "I have \(apples) apples"
let fruitSummary = "\(name), I have \(apples + oranges) pieces of fruit"
print(fruitSummary)

//arrays
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
print(shoppingList[2])

var occupations = [
    "Malcolm":"Captain",
    "Kaylee":"Mechanic"
]

occupations["Jaynoo"] = "Public Relations"

//empty array or dictionary
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

//Flow Control
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print("teamScore: " + String(teamScore))


//optional
var optionalString: String? = "Hello"
print(optionalString == nil)


var optionalName: String? = "Wes"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

print(greeting)

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

//iteration with dictionaries
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind = "Unknown"
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print(String(largest) + " is of kind " + largestKind)

//loop
var n = 2
while (n < 100) {
    n *= 2
}
print(n)

//loop end of expression
var m = 2
repeat{
    m *= 2
} while m < 100
print(m)


//for with value
var total = 0
for i in 0..<4 {
    total += i
}
print(total)








