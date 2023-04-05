//
//  ScoreViewModel.swift
//  Code History Beatrice
//
//  Created by Beatrice Movila on 17.11.2022.
//

import Foundation
 
struct ScoreViewModel {
  let correctGuesses: Int
  let incorrectGuesses: Int
 
  var percentage: Int {
    (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
  }
}
