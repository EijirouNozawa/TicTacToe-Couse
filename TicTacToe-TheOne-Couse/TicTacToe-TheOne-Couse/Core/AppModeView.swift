//
//  ContentView.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/06.
//

import SwiftUI

struct AppModeView: View {
    @StateObject private var viewModel = AppModelViewModel()
    
    
    var body: some View {
        Group {
            switch viewModel.appMode {
            case .gameSetup:
                GameSetupView()
            case .game:
                Text("Game")
            }
        }
        .animation(.easeInOut, value: viewModel.appMode)
    }
}

#Preview {
    AppModeView()
}
