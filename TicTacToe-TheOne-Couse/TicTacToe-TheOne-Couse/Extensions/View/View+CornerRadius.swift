//
//  View+CornerRadius.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/08.
//

import SwiftUI

struct AppCornerRadius {
    let value: CGFloat
}

extension View {
    func cornerRadius(_ appcornerRadius: AppCornerRadius) -> some View {
        self.cornerRadius(appcornerRadius.value)
    }
}

extension AppCornerRadius {
    static var overall: Self = .init(value: 8)
    static var cell: Self = .init(value: 8)
    static var button: Self = .init(value: 8)
    static var textfield: Self = .init(value: 8)
}

#Preview {
    Preview()
}

fileprivate struct Preview: View {
    var body: some View {
        Text("Calculate")
            .foregroundColor(Color.appTheme.accentContrastText)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.appTheme.accent)
            .cornerRadius(.button)
            .button(.press) {
                
            }
            .padding()
                  .infinityFrame()
                  .background(Color.appTheme.viewBackground)
    }
}
