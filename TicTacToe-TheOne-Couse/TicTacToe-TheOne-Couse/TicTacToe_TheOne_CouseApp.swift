//
//  TicTacToe_TheOne_CouseApp.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/06.
//

import SwiftUI

@main
struct TicTacToe_TheOne_CouseApp: App {
    @AppStorage(UserDefaultKeys.isDarkMode) private var isDarkMode: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            AppModeView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
