//
//  SkeletonListState.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 09.05.2023.
//

import Foundation
import ComposableArchitecture

struct SkeletonListState: Equatable {
    var isLoading = false
    var isShowDetailedScreen = false

    var hogwartsStaff: [PersonDataSource] = []
    var detailesState: PersonDetailedState? = nil
}
