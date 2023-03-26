import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
let period = 5
var deposit = 500_000
let rate = 2
var profit = 0

for _ in 1...period {
    let currentProfit = deposit * rate / 100
    profit += currentProfit
    deposit += currentProfit
}
print("Amount of income after \(period) years will be \(profit) EUR. My total deposit will be \(deposit) EUR!")
/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
let myFirstSet: Set<Int> = [45, 67, 3, 12, 99, 62, 54]

for numbers in myFirstSet {
    if numbers % 2 == 0 {
        print(numbers)
    }
}

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */
var counter = 0
for _ in 1...Int.max {
    let randomNumber = Int.random(in: 1...10)
    counter += 1
    if randomNumber == 5 {
        print("Number 5 will be after \(counter) shuffles")
        break
    }
}
/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
var height = 10
var numberOfDays = 0

while height > 0 {
    numberOfDays += 1
    height -= 2
    if height <= 0 {
        break
    }
    height += 1
}
print("Bug will spend \(numberOfDays) to reach top of the post")
