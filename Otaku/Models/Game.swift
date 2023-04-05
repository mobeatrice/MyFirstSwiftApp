//
//  Game.swift
//  Code History Beatrice
//
//  Created by Beatrice Movila on 26.10.2022.
//
import SwiftUI
import Foundation
import AVFoundation

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            //.padding()
           // .foregroundColor(.white)
            //.clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.3 : 1)
            .animation(.easeOut(duration: 0.5), value: configuration.isPressed)
    }
}

struct Game {
    
    private(set) var currentQuestionIndex = 0 //Int.random(in: 0...5) //initial e 0 aici
    private(set) var guesses = [Question: Int] ()
    private(set) var isOver = false
    private let questions = Question.allQuestions.shuffled()
    
    var guessCount: (correct: Int, incorrect: Int) {
           var count: (correct: Int, incorrect: Int) = (0, 0)
           for (question, guessedIndex) in guesses {
               if question.correctAnswerIndex == guessedIndex {
                   count.correct += 1
               } else {
                   count.incorrect += 1
               }
           }
           return count
       }
    
       var numberOfQuestions: Int {
           questions.count
       }
       var currentQuestion: Question {
           questions[currentQuestionIndex]
       }
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
            guesses[currentQuestion] = index
        }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < 9 /*questions.count - 1 */ {  // aici o sa trecut numarul de intrebari dorite 
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
    
    
    //background music
  
    
}




