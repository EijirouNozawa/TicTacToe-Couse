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

extension FirstTurn: CustomStringConvertible {
    var description: String {
        rawValue.capitalized
    }
}
