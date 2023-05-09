//
//  TabBarScreen.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 23.04.2023.
//

import SwiftUI

struct TabBarScreen: View {
    @EnvironmentObject var tabBarViewModel: TabBarViewModel
    @EnvironmentObject var skeletonViewModel: SkeletonListViewModel

    var body: some View {
        TabView(selection: $tabBarViewModel.tabSelection) {
            SkeletonScreen(staffType: .students)
                .tag(0)
                .tabItem {
                    Text("Students")
                    Image("studentsIconTab")
                }
            SkeletonScreen(staffType: .teachers)
                .tag(1)
                .tabItem {
                    Text("Staff")
                    Image("staffIconTab")
                }
            SpellsScreen()
                .tag(2)
                .tabItem {
                    Text("Spells")
                    Image("spellsIconTab")
                }
        }
    }
}

struct TabBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabBarScreen()
            .environmentObject(TabBarViewModel())
    }
}
