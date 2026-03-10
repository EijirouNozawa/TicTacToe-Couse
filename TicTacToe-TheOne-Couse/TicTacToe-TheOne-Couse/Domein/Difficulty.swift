//
//  Difficulty.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/10.
//

import Foundation

enum Difficulty: String, CaseIterable {
    case easy
    case medium
    case hard
}

extension Difficulty: CustomStringConvertible {
    var description: String {
        rawValue.capitalized
    }
}
    
    
