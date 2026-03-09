//
//  PlayerProfile.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/09.
//

import SwiftUI

struct PlayerProfile: Equatable {
    var name: PlayerName
    var image: ImageResource
    var type: PlayerType
}


extension PlayerProfile {
    static var defaultPlayer1: Self {
        .init(
            name: .player1,
            image: .playerBoy1,
            type: .human
        )
    }
    static var defaultPlayer2: Self {
        .init(
            name: .ai,
            image: .playerBot1,
            type: .bot
        )
    }
}

