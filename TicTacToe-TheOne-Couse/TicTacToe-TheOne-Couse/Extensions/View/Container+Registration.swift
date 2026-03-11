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
    
//    var gameStore: Factory<GameStore> {
//        self { MainActor.assumeIsolated { GameLiveStore() } }.singleton
//      }
//      
//      var boardLogicService: Factory<BoardLogicServiceProtocol> {
//        self { MainActor.assumeIsolated { BoardLogicService() } }.singleton
//      }
//      
//      var botEngineService: Factory<BotEngineServiceProtocol> {
//        self { MainActor.assumeIsolated { BotEngineService() } }.singleton
//      }
      
      var errorHandlerService: Factory<ErrorHandlerProtocol> {
        self { MainActor.assumeIsolated { ErrorHandlerService() } }.singleton
      }
      
      var analyticsService: Factory<AnalyticsProtocol> {
        self { MainActor.assumeIsolated { AnalyticsService() } }.singleton
      }
}
