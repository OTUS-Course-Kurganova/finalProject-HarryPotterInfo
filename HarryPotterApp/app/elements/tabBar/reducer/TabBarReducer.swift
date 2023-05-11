//
//  TabBarReducer.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 11.05.2023.
//

import Foundation
import ComposableArchitecture

let TabBarReducer = Reducer<TabBarState, TabBarActions, TabBarEnvironment> {
    state, actions, environment in
    switch actions {
        case .selectedTabChange(let selectedTab):
          state.selectedTab = selectedTab
          return .none
        }
}
