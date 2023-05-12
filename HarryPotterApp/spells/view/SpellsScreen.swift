//
//  SpellsScreen.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 23.04.2023.
//

import SwiftUI
import ComposableArchitecture

struct SpellsScreen: View {
    let stateStore: Store<SpellsState, SpellsActions>
    
    var body: some View {
        WithViewStore(stateStore) { viewStore in
            List {
                ForEach(viewStore.spells) { spell in
                    HStack {
                        Text(spell.name)
                            .font(.headline)
                        Divider()
                            .padding(.horizontal, 5)
                        Text(spell.description)
                    }
                }
            }
            .onAppear { viewStore.send(.getSpells) }
        }
    }
}

struct SpellsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SpellsScreen(stateStore: .init(initialState: SpellsState(), reducer: EmptyReducer()))
    }
}
