//
//  GameState.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/11.
//

import Foundation

enum GameState: Equatable {
  case playing
  case won(Player)
  case tied
  
  var isGameOver: Bool {
    switch self {
    case .playing: false
    case .won, .tied: true
    }
  }
  
  var isTied: Bool {
    self == .tied
  }
  
  var winnerPlayer: Player? {
    switch self {
    case .won(let player): player
    case .tied, .playing: nil
    }
  }
}
