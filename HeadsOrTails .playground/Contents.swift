import UIKit
/*
 1- Create a function tossCoin() ->  String
 Have this function print "Tossing a Coin!"
 Next have the function randomly pick either "Heads" or "Tails"
 Have the function print the result
 Finally, have the function return the result
 Now create another function tossMultipleCoins(Int) -> Double
 Have this function call the tossCoin function multiple times based on the Integer input
 2- Have the function return a Double that reflects the ratio of head toss to total toss
 
 */
func tossCoin() -> String{
    print("Tossing a Coin!")
    
    var returnString: String
    let randoumNumber = arc4random_uniform(2)
    
    if randoumNumber == 0 {
        returnString = "came up tails"
    }else {
        returnString = "came up heads"
    }
    
    return returnString
}

func tossMultipleCoins(times :Int) -> Double{
    
    var heads = 0
    var tails = 0
    
    for _ in 1 ... times{
        let resutlt = tossCoin()
        
        switch resutlt{
        case "came up tails":
            tails += 1
        case "came up heads":
            heads += 1
        default:
            print("error")
        }
    }
    return Double(heads) / Double(times)
}
print(tossMultipleCoins(times: 10))


