import Cocoa

//simple functions
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Bob", day: "Tuesday"))


func greetNew(person: String, msg: String) -> String {
    return "Hello \(person), today's special is \(msg)."
}
print(greet(person: "Bob", day: "Spaghetti"))



//multiple return values and tuples
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)


//Write a function that calculates the average of its arguments.
func calculateAverage(scores : [Float]) -> Float{
    var sum : Float = 0.0
    var count : Float = 0
    for score in scores{
        count += 1
        sum += score
    }
    return (sum/count)
}
let newStats = calculateAverage(scores: [5,7,8,3,5,3,4,41.0,7,])
print ("Average: \(newStats)")




//closures
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12, 4, 5]
hasAnyMatches(list: numbers, condition: lessThanTen)

//return 0 for all odd numbers
print(numbers.map({ (number: Int) -> Int in
    if number % 2 == 0 {
        return number
    }else{
        return 0
    }
}))


//: You can refer to parameters by number instead of by name—this approach is especially useful in very short closures. A closure passed as the last argument to a function can appear immediately after the parentheses. When a closure is the only argument to a function, you can omit the parentheses entirely.
//:
let sortedNumbers = numbers.sorted { $0 < $1 }
print(sortedNumbers)

//Stopped at Objects & Classes







