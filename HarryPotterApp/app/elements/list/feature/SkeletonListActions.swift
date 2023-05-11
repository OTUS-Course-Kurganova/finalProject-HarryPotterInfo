//
//  SkeletonListActions.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 09.05.2023.
//

import Foundation
import ComposableArchitecture

enum SkeletonListActions {
    case getAllHogwartsStaff
    case getHogwartsStaffResult(TaskResult<[PersonDataSource]>)

    case showDetailedInfo(PersonDataSource)
    case detailedActions(PersonDetaildedActions)
}
