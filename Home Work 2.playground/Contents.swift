import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */
var firstA: Float = 6.13
var secondB: Float = 87.4
var thirdC: Double = Double(firstA) + Double(secondB)
print(String(format: "%.2f", thirdC))


/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */
var numberOne: Int = 54
var numberTwo: Int = 46
let remainder: Int = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(remainder).")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

let quantity = 5
var price: Int

if quantity >= 10 {
    price = 850
} else if quantity >= 5 {
    price = 900
} else {
    price = 1000
}
var sum = quantity * price
print("New \(quantity) Macbook Pro with the price of: \(price) EUR, will cost you: \(sum)")
/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
var userInputAge: String? = "65764"
//var age = Int(userInputAge)

if let age = Int(userInputAge ?? "") {
    print("The age is \(age)")
} else {
    print("Can't convert to Int")
}
/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd"
if let birth = dateFormatter.date(from: "2000-07-27") {
    let currentDate = Date()
    let calendar = Calendar.current
    let components = calendar.dateComponents([.year, .month, .day], from: birth, to: currentDate)
    if let totalYearsFromBirth = components.year, let totalMonthFromBirth = components.month, let totalDaysFromBirth = components.day {
        print("Total years \(totalYearsFromBirth), total months \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
    }
}

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
//=================
var quarter: Int
switch 7 {
case 1...3:
    quarter = 1
    print("I was born in quarter \(quarter)")
case 4...6:
    quarter = 2
    print("I was born in quarter \(quarter)")
case 7...9:
    quarter = 3
    print("I was born in quarter \(quarter)")
case 10...12:
    quarter = 4
    print("I was born in quarter \(quarter)")
default:
    print("Invalid value of month of birth")
}

