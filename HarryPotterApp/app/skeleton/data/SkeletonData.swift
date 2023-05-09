//
//  SkeletonData.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 07.05.2023.
//

import Foundation

final class PersonDataSource {
    let image: String = ""
    let name: String = ""
}

extension PersonDataSource: Identifiable { }

final class SpellsDataSource {
    let name: String = ""
    let description: String = ""
}

extension SpellsDataSource: Identifiable { }
