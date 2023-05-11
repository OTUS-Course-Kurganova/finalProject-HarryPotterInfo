//
//  PersonDetailedReducer.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 11.05.2023.
//

import Foundation
import ComposableArchitecture

let PersonDetailedReducer = Reducer<PersonDetailedState, PersonDetaildedActions, PersonDetailedEnvironment> {
    state, action, environment in
    switch action {
        case let .tapOnPerson(person):
            return .none
    }
}
