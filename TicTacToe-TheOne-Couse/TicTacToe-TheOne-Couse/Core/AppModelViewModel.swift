//
//  AppModelViewModel.swift
//  TicTacToe-TheOne-Couse
//
//  Created by 野澤英二郎 on 2026/03/06.
//

import Foundation
import Combine
import Factory

final class AppModelViewModel: ObservableObject {
    @Published var appMode: AppMode = .gameSetup
    private var cancellables = Set<AnyCancellable>()
    @Injected(\.appModeStore) var appModeStore
    
    
    init() {
        setSubscribers()
    }
}

private extension AppModelViewModel {
    func setSubscribers() {
       appModeStore.$appMode
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                guard let self else { return }
                updateAppMode()
            }
            .store(in: &cancellables)
    }
    
    func updateAppMode() {
        appMode = appModeStore.appMode
    }
}
