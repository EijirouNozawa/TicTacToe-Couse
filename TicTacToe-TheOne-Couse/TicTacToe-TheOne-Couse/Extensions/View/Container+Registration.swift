//
//  Container+Registration.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/06.
//

import Factory

extension Container {
    var appModeStore: Factory<AppModeLiveStore> {
        self { MainActor.assumeIsolated{ AppModeLiveStore()} }.singleton
    }
    
    var gameSetupStore: Factory<GameSetupLiveStore> {
        self { MainActor.assumeIsolated { GameSetupLiveStore() } }.singleton
      }
}
