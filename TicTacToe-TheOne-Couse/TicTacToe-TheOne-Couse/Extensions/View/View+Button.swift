//
//  View+Button.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/08.
//

import SwiftUI

struct PressableButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
    }
}

enum ButtonStuleOption {
    case press, plain
}

extension View {
    @ViewBuilder
    func button(_ option: ButtonStuleOption = .plain, action: @escaping () -> Void) -> some View {
        switch option {
        case .press:
            self.pressableButton(action: action)
        case .plain:
            self.plainButton(action: action)
        }
    }
    
    private func plainButton(action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            self
        }
        .buttonStyle(PlainButtonStyle())
    }
    
    private func pressableButton(action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            self
        }
        .buttonStyle(PressableButtonStyle())
    }
}

#Preview {
    Preview()
}
fileprivate struct Preview: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Continue")
                .primaryButton()
                .button(.press) {
                }
            
            Text("Continue")
                .primaryButton()
                .button {
                    
                }
            
        }
        
        .padding()
        .infinityFrame()
        .background(Color.appTheme.viewBackground)
    }
}
