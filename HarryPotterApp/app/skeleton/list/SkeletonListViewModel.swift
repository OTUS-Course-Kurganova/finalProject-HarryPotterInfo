//
//  SkeletonListViewModel.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 07.05.2023.
//

import SwiftUI

final class SkeletonListViewModel: ObservableObject {
    @Published var dataSource: [PersonDataSource] = [.init()]
    @Published var dataIsEmpty: Bool = false
    @Published var isShowDetailedScreen = false

    var filters = [String]()
    var isLoading = false

    func getListData() {
        
    }
}
