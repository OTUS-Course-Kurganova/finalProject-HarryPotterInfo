//
//  ContentView.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 23.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBarScreen()
            .environmentObject(TabBarViewModel())
            .environmentObject(SkeletonScreenViewModel())
            .environmentObject(SkeletonListViewModel())
            .environmentObject(SpellsViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
