//
//  SpellsReducer.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 12.05.2023.
//

import Foundation
import ComposableArchitecture

let SpellsReducer = Reducer<SpellsState, SpellsActions, SpellsEnvironment> {
    state, action, environment in
    switch action {
        case .getSpells:
            state.isLoading = true
            return .task {
                await .getSpellsResult(TaskResult {
                    try await environment.getAllSpells()
                })
            }
        case let .getSpellsResult((.success(loadedSpells))):
            state.isLoading = false
            state.spells = loadedSpells
            return .none
        case let .getSpellsResult(.failure(errorData)):
            state.isLoading = false
            return .none
    }
}
