//
//  SkeletonScreenViewModel.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 24.04.2023.
//

import SwiftUI

final class SkeletonScreenViewModel: ObservableObject {
    @Published var housesButtonData: [HousesButtonData] = []
    @Published var staffType: HogwartsStaffTypes = .none

    private var listViewModel: SkeletonListViewModel = .init()
    
    init() {
        configureHousesButtonsImageData()
    }

    func configureHousesButtonsImageData() {
        let names = ["griffindor", "slytherin", "ravenclaw", "hufflepuff"].map { $0.appending("HouseButton") }
        let actions = [0, 1, 2, 3]
        if names.count != actions.count { return }
        housesButtonData = zip(names, actions).map { .init(imageName: $0, action: $1) }
    }

    final class HousesButtonData: Identifiable {
        let imageName: String
        let action: Int

        init(imageName: String, action: Int) {
            self.imageName = imageName
            self.action = action
        }
    }

    func setFiltersData() {}

    func fillSceletonList() {
        listViewModel.getListData()
    }
}
