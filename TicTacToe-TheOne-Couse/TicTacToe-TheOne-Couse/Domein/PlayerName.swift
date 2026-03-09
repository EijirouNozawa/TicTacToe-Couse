//
//  PlayerName.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/09.
//

import Foundation

enum PlayerName {
    case player1
    case player2
    case ai
}


extension PlayerName: CustomStringConvertible {
    var description: String {
        switch self {
        case .player1: "player1"
        case .player2: "player2"
        case .ai: "AI"
        }
    }
}
            
    
