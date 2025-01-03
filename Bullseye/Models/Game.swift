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
  var leaderBoardEntries: [LeaderboardEntry] = []
  
  init(loadTestData: Bool = false) {
    if loadTestData {
      addToLeaderboard(score: 100)
      addToLeaderboard(score: 100)
      addToLeaderboard(score: 100)
      addToLeaderboard(score: 100)
      addToLeaderboard(score: 100)
      addToLeaderboard(score: 100)
    }
  }
  
  func points(sliderValue: Int) -> Int {
    let difference = abs(target - sliderValue)
    let bonus: Int
    
    if difference == 0 {
      bonus = 100
    }
    else if difference <= 2 {
      bonus = 50
    }
    else {
      bonus = 0
    }
    return (100 - difference) + bonus
  }
  
  mutating func startNewRound(points: Int) {
    addToLeaderboard(score: points)
    score += points
    round += 1
    target = Int.random(in: 1...100)
  }
  
  mutating func restart() {
    score = 0
    round = 1
    target = Int.random(in: 1...100)
  }
  
  mutating func addToLeaderboard(score: Int) {
    leaderBoardEntries.append(LeaderboardEntry(score: score, date: Date()))
    leaderBoardEntries.sort { entry1, entry2 in
      entry1.score > entry2.score
    }
  }
}

struct LeaderboardEntry {
  let score: Int
  let date: Date
}
