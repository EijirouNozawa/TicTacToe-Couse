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

//extension Difficulty: CustomStringConvertible {
//    var description: String {
//        rawValue.capitalized
//    }
//}
    
    
extension Difficulty: CustomStringConvertible {
    var description: String {
        switch self {
        case .easy: "初級"
        case .medium: "中級"
        case .hard: "上級"
        }
    }
}
