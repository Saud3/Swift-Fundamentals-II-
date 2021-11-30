import UIKit

/*
 1.Write a program that adds the numbers 1-255 to an array
 
 */
var myArray =  Array(1...255)
    print(myArray)
//myArray.swapAt(0, 1)
//print(myArray)
/*
 2.Swap two random values in the array
 Hint: you can use the arc4random_uniform(UInt32) function to get a random number from 0 to the number passed in. The arc4random_uniform function takes in one parameter that is of the UInt32 type and returns a random number that is of the UInt32 type. How can you deal with this using your knowledge of types?
 */
let random1 = Int(arc4random_uniform(UInt32(myArray.count)))
let random2 = Int(arc4random_uniform(UInt32(myArray.count)))


/*
 3.Now write the code that swaps random values 100 times (You've created a "Shuffle"!)
 */

for _ in 0..<100{
    let random1 = Int(arc4random_uniform(UInt32(myArray.count)))
    let random2 = Int(arc4random_uniform(UInt32(myArray.count)))
    let temp = myArray[random1]
    myArray[random1] = myArray[random2]
    myArray[random2] = temp
}
print(myArray)
/*
 4.Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life, the Universe, and Everything at index __" and print the index of where "42" was before you removed it.
 */
for i in 0..<myArray.count{
    if myArray[i] == 42{
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at \(i)")
    }
}
 
