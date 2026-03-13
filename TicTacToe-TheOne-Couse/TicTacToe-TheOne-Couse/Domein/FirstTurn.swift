//
//  FirstTurn.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/10.
//

import Foundation

enum FirstTurn: String, CaseIterable {
    case you
    case opponent
    case random
}

//extension FirstTurn: CustomStringConvertible {
//    var description: String {
//        rawValue.capitalized
//    }
//}


extension FirstTurn: CustomStringConvertible {
    var description: String {
        switch self {
        case .you: "あなた"
        case .opponent: "対戦相手"
        case .random: "ランダム"
        }
    }
}
