//
//  CellState.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/11.
//

import SwiftUI

enum CellState {
  case empty
  case x
  case o
  
  var symbol: String {
    switch self {
    case .x: "X"
    case .o: "O"
    case .empty: ""
    }
  }
  
  var color: Color {
    switch self {
    case .x: Color.appTheme.accent
    case .o: Color.appTheme.alternateAccent
    case .empty: Color.clear
    }
  }
}
