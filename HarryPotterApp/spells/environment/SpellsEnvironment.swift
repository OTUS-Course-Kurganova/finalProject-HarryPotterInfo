//
//  SpellsEnvironment.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 12.05.2023.
//

import Foundation
import Network
import ComposableArchitecture

struct SpellsEnvironment {
    let network = APIAPI.self

    func getAllSpells() async throws -> [SpellDataSource] {
        return try await network.spellsGet()
            .map { convertToSpellsDataSource($0) }
    }

    fileprivate func convertToSpellsDataSource(_ from: Spell) -> SpellDataSource {
        return .init(id: from.id, name: from.name, description: from.description)
    }
}
