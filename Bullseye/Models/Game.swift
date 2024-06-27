//
//  Game.swift
//  Bullseye
//
//  Created by Vince Harding on 12/06/2024.
//

import Foundation

struct Game {
  var target = Int.random(in: 1...100)
  var score = 0
  var round = 1
  
  func points(sliderValue: Int) -> Int {
    100 - abs(target - sliderValue)
  }
  
  mutating func startNewRound(points: Int) {
    score += points
    round += 1
  }
}
