//
//  ContentView.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 23.04.2023.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    var body: some View {
        TabBarScreen(store: Store<TabBarState, TabBarActions>(initialState: TabBarState(), reducer: TabBarReducer, environment: TabBarEnvironment()))
            .environmentObject(SpellsViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
