import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */
let myTeam = "Girls"
var resultsOfGames = [
    "Brooklyn Nets": ["99:89", "109:99"],
    "Dallas Mavericks": ["87:93", "104:97"],
    "Washington Wizards": ["117:112", "107:122"]
]

for (teamName, res) in resultsOfGames {
    print("\(myTeam) against \(teamName) scored \(res[0])")
    print("\(myTeam) against \(teamName) scored \(res[1])")
}
/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */
var wallet = [Int]()
func sumOfEUR (_ myWallet: Int...) -> Int {
    var sum = 0
    for money in myWallet {
        sum += money
        
    }
    print("The sum is \(sum) EUR")
    return sum
    
}
sumOfEUR(5, 10, 20, 50, 100, 200, 500)

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */
var res: Bool = true
func isEvenNumber (num: Int) {
    if num % 2 == 1 || num == 0 {
        res = false
    }
}
isEvenNumber(num: 67540)
print("Is the number even? \(res)")
/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */
func createArray (start: Int, end: Int) -> [Int] {
    var array = [Int] ()
    for res in start...end {
        array.append(res)
    }
    return array
}
var ress = createArray(start: 1, end: 100)
print(ress)
/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
for number in ress {
    if number % 2 == 0 {
        if let index = ress.firstIndex(of: number) {
            ress.remove(at: index)
        }
    }
}
print(ress)
