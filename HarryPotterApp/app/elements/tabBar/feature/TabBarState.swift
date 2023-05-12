//
//  TabBarState.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 11.05.2023.
//

import Foundation

struct TabBarState: Equatable {
    enum Tab {
        case staff
        case spells
    }

    var selectedTab = Tab.staff
}
