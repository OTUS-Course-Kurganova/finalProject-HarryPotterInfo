//
//  SpellsViewModel.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 09.05.2023.
//

import SwiftUI

final class SpellsViewModel: ObservableObject {
    @Published var spellsDataSource: [SpellsDataSource] = [.init()]
}
