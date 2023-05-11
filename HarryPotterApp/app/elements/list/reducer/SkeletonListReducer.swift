//
//  SkeletonListReducer.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 09.05.2023.
//

import Foundation
import ComposableArchitecture

let SkeletonListReducer = Reducer<SkeletonListState, SkeletonListActions, SkeletonListEnvironment> {
    state, action, environment in
    switch action {
        case .getAllHogwartsStaff:
            state.isLoading = true
            state.isShowDetailedScreen = false
            return .task {
                await .getHogwartsStaffResult(TaskResult {
                    try await environment.getAllHogwartsStaff()
                })
            }
        case let .getHogwartsStaffResult(.success(loadedData)):
            state.isLoading = false
            state.isShowDetailedScreen = true
            state.hogwartsStaff = loadedData
            return .none
        case let .getHogwartsStaffResult(.failure(errorData)):
            state.isLoading = false
            state.isShowDetailedScreen = false
            return .none
        case let .showDetailedInfo(person):
            state.isShowDetailedScreen = true
            state.detailesState = PersonDetailedState(person: person)
            return .none
        case let .detailedActions(actions):
            return .none
    }
}
