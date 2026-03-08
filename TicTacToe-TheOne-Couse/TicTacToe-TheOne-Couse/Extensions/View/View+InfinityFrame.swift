//
//  View+InfinityFrame.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/08.
//

import SwiftUI

extension View {
  func infinityFrame() -> some View {
    self
      .frame(maxWidth: .infinity, maxHeight: .infinity)
  }
}
