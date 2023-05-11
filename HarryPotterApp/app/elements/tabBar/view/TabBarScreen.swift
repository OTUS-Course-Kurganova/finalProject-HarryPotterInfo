//
//  TabBarScreen.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 23.04.2023.
//

import SwiftUI
import ComposableArchitecture

struct TabBarScreen: View {
    let store: Store<TabBarState, TabBarActions>

    var body: some View {
        WithViewStore(store) { viewStore in
            TabView(selection: viewStore.binding(
                get: { $0.selectedTab },
                send: TabBarActions.selectedTabChange
            ), content: {
                Group {
                    SkeletonListView(stateStore: Store<SkeletonListState, SkeletonListActions>(initialState: SkeletonListState(), reducer: SkeletonListReducer, environment: SkeletonListEnvironment()))
                        .tag(0)
                        .tabItem {
                            Text("Students")
                            Image("studentsIconTab")
                        }
                    SkeletonListView(stateStore: Store<SkeletonListState, SkeletonListActions>(initialState: SkeletonListState(), reducer: SkeletonListReducer, environment: SkeletonListEnvironment()))
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
            })
        }
    }
}

struct TabBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabBarScreen(store: .init(initialState: TabBarState(), reducer: EmptyReducer()))
    }
}
