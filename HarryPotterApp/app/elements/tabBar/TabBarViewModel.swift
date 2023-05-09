//
//  TabBarViewModel.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 23.04.2023.
//

import SwiftUI

final class TabBarViewModel: ObservableObject {
    @Published var tabSelection: Int = 0
}
