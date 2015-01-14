// Playground - noun: a place where people can play

import UIKit

// MARK: PART 1
var myArray = [10,2,5,4]

// Sort Array from smallest to largest number
sort(&myArray) { $0 < $1 }

myArray

// Find target Number in Array

func findTargetNumber (myArray: [Int], targetNumber: Int) -> Int {
    for (index, value) in enumerate(myArray) {
        if value == targetNumber {
            println("Found target number at index: \(targetNumber)")
            return index
        }
    }
    println("I cannot find the target number \(targetNumber)")
    return -1
}

findTargetNumber(myArray, 5)

// MARK PART 2.1

// Find target Number multiple times in Array
var myBiggerArray = [10,2,3,1,5,5,5,15]

sort(&myBiggerArray) { $0 < $1 }

myBiggerArray

func findTargetNumbers (myArray: [Int], targetNumber: Int) -> [Int] {
    
    var resultsArray = [Int]()
    
    for (index, value) in enumerate(myArray) {
        if value == targetNumber {
            resultsArray.append(index)
        }
    }
    if resultsArray.count == 0 {
        resultsArray.append(-1)
    }
    return resultsArray
}

findTargetNumbers(myBiggerArray, 1)
findTargetNumbers(myBiggerArray, 5)
findTargetNumbers(myBiggerArray, 50)
