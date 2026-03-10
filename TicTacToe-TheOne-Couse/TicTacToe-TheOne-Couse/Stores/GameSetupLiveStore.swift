//
//  GameSetupLiveStore.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/10.
//

import Foundation
import Combine

@MainActor
final class GameSetupLiveStore: ObservableObject {
  @Published var player1: PlayerProfile = .defaultPlayer1
  @Published var player2: PlayerProfile = .defaultPlayer2
  @Published var selectedDifficulty: Difficulty = .medium
  @Published var selectedFirstTurn: FirstTurn = .random
}
