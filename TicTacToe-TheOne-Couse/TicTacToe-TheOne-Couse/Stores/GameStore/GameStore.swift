//
//  GameStore.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/12.
//

import Foundation

protocol GameStore {
  func validateMove(row: Int, col: Int, board: Board, gameState: GameState) throws
  func checkWin(in board: Board, for cellSymbol: CellState) -> [CellCoordinate]?
  func isBoardFull(_ board: Board) -> Bool
  func botBestMove(in board: [[CellState]], difficulty: Difficulty) -> CellCoordinate
}
