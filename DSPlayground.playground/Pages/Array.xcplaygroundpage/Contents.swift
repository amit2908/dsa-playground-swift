/*: [Previous](@previous)
 # Array and its operations
 */

import Foundation
/*: ### Reverse an array
 Trick is to use a for loop with reverse index
 */

let array = [0,1,3,5,7,6]

let reversedArray = reverseArray(array: array)
output(for: reversedArray, title: "Reverse Array")

//: Find the kth largest and kth smallest number
func findLargestAndSmallestNumber(arr: [Int]) -> (Int, Int){
    //1. Create two variables to store the largest and the smallest number initialized with 0
    //2. Iterate the array.
    //3. Compare each item of array with the variable and update largest if found larger and smallest if found smaller than the respective variable value.
    //4. Return the tuple
    
    //1
    var largest = 0
    var smallest = 0
    
    //2
    for num in arr {
        //3
        if num > largest {
            largest = num
        }
        
        if num < smallest {
            smallest = num
        }
    }
    
    //4
    return (smallest, largest)
}
let (a, b) = findLargestAndSmallestNumber(arr: array)
output(for: String(format: "%d, %d", a, b), title: "Largest and Smallest")

//: [Next](@next)
