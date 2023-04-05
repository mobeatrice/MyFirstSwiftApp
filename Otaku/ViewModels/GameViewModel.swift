//
//  GameViewModel.swift
//  Code History Beatrice
//
//  Created by Beatrice Movila on 15.11.2022.
//

import Foundation
import SwiftUI
import AVFoundation
// 1
class GameViewModel: ObservableObject {
 
  // MARK: - Published properties
  // 2
  @Published private var game = Game()
 
  // MARK: - Internal properties
  // 3
  var currentQuestion: Question {
     game.currentQuestion
  }
  // 4
  var questionProgressText: String {
    "\(game.currentQuestionIndex + 1) / 10"  //initial era \(game.numberOfQuestions) -numarul de sus de intrebari
      
  }
    
    // 1
       var guessWasMade: Bool {
            if let _ = game.guesses[currentQuestion] {
                return true
            } else {
                return false
            }
        }
    
    var gameIsOver: Bool {
      game.isOver
    }
     
        // MARK: - Internal Methods
        // 2
        func makeGuess(atIndex index: Int) {
            game.makeGuessForCurrentQuestion(atIndex: index)
        }
        // 3
        func displayNextScreen() {
            game.updateGameStatus()
            //sunet cand trec la urmatoarea pagina
           //playSound(sound: "bubble", type: "wav")
        }
    func color(forOptionIndex optionIndex: Int) -> Color {
             if let guessedIndex = game.guesses[currentQuestion] {
                 if guessedIndex != optionIndex {
                     return GameColor.main
                 } else if guessedIndex == currentQuestion.correctAnswerIndex {
                     return GameColor.correctGuess
                 } else {
                     return GameColor.correctGuess /*GameColor.incorrectGuess // asta e cea corecta */
                 }
             } else {
                 return GameColor.main
             }
         }
    
    func playBackgroundMusic()
    {
        playSound(sound: "bubble", type: "wav")
    }
    
    var correctGuesses: Int {
      game.guessCount.correct
    }
   
    var incorrectGuesses: Int {
      game.guessCount.incorrect
    }
    
 
    
}
