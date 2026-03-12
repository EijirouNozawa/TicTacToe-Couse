//
//  GameView.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/12.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel: GameViewModel = .init()
    
    
    var body: some View {
        Text("GameView")
    }
}

#Preview {
    GameView()
}
