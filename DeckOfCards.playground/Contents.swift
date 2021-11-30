import Foundation

/*
 Deck of Cards
 Objective
 In Swift Structs and Classes are used extensively. This assignment is designed to help you understand the differences between Classes and Structs so that you can choose the best construct for your needs when building your own applications. It is natural to question whether to use a Class or a Struct, and this will become more and more clear as you use both and see the differences.

 With this assignment we will be building the basic structure of a simple game we are going to call "Machi". For this game there are 30 cards of 3 different colors each with a value that matches one of the potential rolls of a six-sided dice.
 */
// 1 - Create a struct called "Card"
//Give the Card struct a property "Color" which will hold the color values associated with the card (Red, Blue, or Green). This value should be a String or an Enum
enum Color{
    case red
    case blue
    case green
}
//Give the Card a property "Roll" which will hold a random value that represents the side of the die that will trigger that card.
struct Card{
    var color : Color
    var roll : Int
    
/*    Blue cards should have a roll value of either 1 or 2
      Red cards should have a roll value of either 3 or 4
      Green cards should have a roll value of 4, 5 or 6*/
    init(color:Color){
        self.color = color
        switch color {
        case .blue:
            self.roll = Int.random(in: 1...2)
            
        case .red:
            self.roll = Int.random(in: 3...4)
            
        case .green:
            self.roll = Int.random(in: 4...5)
            
//        default:
//            fatalError("Unsupported")
        }
    }
}
/*
 Next, create a class called "Deck"

 Give the Deck class a property called "cards" of type [Card]
 When initializing the deck make sure that it has 10 cards of each color for a total of 30
 Give the Deck a deal method that selects the "top-most" card, removes it, and returns it
 Give the Deck a isEmpty method that returns true or false in regards to if the deck has ran out of cards.
 Give the Deck a shuffle method that randomly reorders the deck's cards*/
class Deck{
    var cardDeck:[Card]

    init() {
     var card: [Card] = []
     for _ in 1...10 {
         let cardblue = Card(color: .blue)
         let cardRed = Card(color: .red)
         let cardgreen = Card(color: .green)
         card.append(cardblue)
         card.append(cardRed)
         card.append(cardgreen)
     }
     self.cardDeck = card
    }

    func draw() -> Card {
        if cardDeck.isEmpty{
            print("no more cards")
        }

        return cardDeck.removeFirst()
    }

    func isEmpty() -> Bool {
        return cardDeck.isEmpty
    }

   func shuffle () {
       cardDeck.shuffle()
   }
}
   
/*
 Finally, create a class called "Player"

 Give the Player class a name property
 Give the Player a hand property of type [Card]
 Give the Player a draw method of type (Deck) -> Card which draws a card from a deck, adds it to the players hand, and returns it
 Note how we are passing the Deck by reference here since it is a class.
 Give the Player a rollDice method that returns a random number between 1 and 6
 Give the Player a matchingCards method of (String, Int) -> Int that will count all the card the player has which match the given color string and roll integer.
 */

class Player{
    let name: String
    var holdOfhand:[Card]
 
 init(name: String) {
     self.name = name
     self.holdOfhand = []
 }
 
 func drawForm (deck: Deck)-> Card {
    let drawCard = deck.draw()
    holdOfhand.append(drawCard)
    return drawCard
   }

  func rollDice () -> Int {
      return Int.random(in: 1...6)
  }

  func matchingCards(color: Color, roll: Int) -> Int {
      var count = 0
      for card in self.holdOfhand {
          if card.roll == roll && card.color == color {
              count += 1
          }
      }
      return count
  }
}


