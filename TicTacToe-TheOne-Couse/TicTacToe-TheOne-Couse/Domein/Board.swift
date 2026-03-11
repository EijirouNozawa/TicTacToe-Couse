//
//  Board.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/11.
//

import Foundation

typealias Board = [[CellState]]

extension Board {
  static var empty: Self {
    .init(repeating: .init(repeating: .empty, count: GameConstants.boardSize), count: GameConstants.boardSize)
  }
}
