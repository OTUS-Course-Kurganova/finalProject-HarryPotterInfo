//
//  SpellsActions.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 12.05.2023.
//

import Foundation
import ComposableArchitecture

enum SpellsActions {
    case getSpells
    case getSpellsResult(TaskResult<[SpellDataSource]>)
}
