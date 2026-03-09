//
//  PlayerType.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/09.
//

import Foundation

enum PlayerType {
    case human
    case bot
}

extension PlayerType {
    var isHuman: Bool {
        self == .human
    }
    
    var isBot: Bool {
        self == .bot
    }
}
