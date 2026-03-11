//
//  ErrorHandlerService.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/11.
//

import Foundation

protocol ErrorHandlerProtocol {
    func handle(_ error: GameError)
    func logError(_ error: GameError)
}


final class ErrorHandlerService: ErrorHandlerProtocol {
    func handle(_ error: GameError) {
        logError(error)
        // we can also show an alert to the user or perform other error handling actions here
    }
    
    func logError(_ error: GameError) {
        #if DEBUG
        print("🎮 Game Error: \(error.errorDescription ?? "Unknown Error")")
        #endif
        
        // In a production app, we might want to log this error to an external service or file for later analysis.
    }
    
}
