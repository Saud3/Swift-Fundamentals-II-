import UIKit
//First, create a loop (either for or while) that prints all of the values from 1-255
print("loop from 1 to 255")
for i in 1...255{
    print(i)
}
//Next, create a program that prints all of the values from 1-100 that are divisible by 3 or 5 but not both
print("loop from 1 to 100 ")
for i in 1...100{
    print(i/3)
}
//Now modify that program to print all values from 1-100, but replace the number with "Fizz" when the number is divisible by 3, "Buzz" when the number is divisible by 5, and "FizzBuzz" when the number is divisible by both!
print("fizz buzz")
for i in 1...100
{
    if i % 3 == 0 {
        print("fizz")
    }else{
        print(i)
        }
}

//"Fizz" when the number is divisible by 3, "Buzz" when the number is divisible by 5

for i in 1...100
{
    if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}
    
//and "FizzBuzz" when the number is divisible by both!
for i in 1...100
{
    if i % 3 == 0 {
        if i % 5 == 0 {
            print("FizzBuzz")
        } else {
            print("Fizz")
        }
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}
