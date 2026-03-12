//
//  AppModeLiveStore.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/06.
//

import Foundation
import Combine

@MainActor
final class AppModeLiveStore: ObservableObject {
    
    @Published private(set) var appMode: AppMode = .gameSetup
    
    func goGameMode() {
        appMode = .game
    }
    
    func goSetupMode() {
        appMode = .gameSetup
    }
}
