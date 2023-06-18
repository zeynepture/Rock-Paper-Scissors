
import Foundation

// upSchool Bootcamp : Homework1
// Created by Zeynep Ture Hekimoglu on 18.06.2023.
//gamer1 : computer
//gamer2 : you

enum options {
    case rock
    case paper
    case scissors
}

class game
{
    var gamer1 :(options)
    var gamer2 :(options)
    var indForGamer2: (Int)
    init(indForGamer2 : Int) {
        self.indForGamer2 = indForGamer2
        self.gamer1 = .paper //default
        self.gamer2 = .paper //default
    }
    func start()
    {
        //switch for gamer1
        let randomInt = Int.random(in: 1..<4)
        switch randomInt
        {
        case 1:
            gamer1 = .scissors
        case 2:
            gamer1 = .rock
        case 3:
            gamer1 = .paper
        default:
            break
        }
        //switch for gamer2
        switch indForGamer2
        {
        case 1:
            gamer2 = .rock
        case 2:
            gamer2 = .paper
        case 3:
            gamer2 = .scissors
        default:
            print("Please select an appropriate value for the game.!")
            fatalError("Unexpected value \(indForGamer2)")
        }
        
        if ((gamer1 == .paper && gamer2 == .rock) || (gamer1 == .scissors && gamer2 == .paper) || (gamer1 == .rock && gamer2 == .scissors))
        {
            print("Competitor's hand: --> \(gamer1)")
            print("Your hand: --> \(gamer2)")
            print("You lost...")
        }
        else if((gamer1 == .scissors && gamer2 == .rock) || (gamer1 == .rock && gamer2 == .paper) || (gamer1 == .paper && gamer2 == .scissors))
        {
            print("Competitor's hand: --> \(gamer1)")
            print("Your hand: --> \(gamer2)")
            print("You win...")
        }
        else {
            print("Competitor's hand: --> \(gamer1)")
            print("Your hand: --> \(gamer2)")
            print("Scoreless...")
        }
    }
}

print("Please select your hand --> Rock : 1, Paper : 2, Scissor : 3")
var num1 = Int(readLine()!)!
var newGame = game(indForGamer2:num1)
newGame.start()
