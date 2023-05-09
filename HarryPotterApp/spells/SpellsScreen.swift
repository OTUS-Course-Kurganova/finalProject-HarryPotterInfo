//
//  SpellsScreen.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 23.04.2023.
//

import SwiftUI

struct SpellsScreen: View {
    @EnvironmentObject var viewModel: SpellsViewModel

    var body: some View {
        List {
//            ForEach(viewModel.spells) { spell in
//                Text(spell.name)
//                Text(spell.description)
//            }
        }
    }
}

struct SpellsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SpellsScreen()
    }
}
