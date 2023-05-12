//
//  SkeletonListModel.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 11.05.2023.
//

import Foundation

struct PersonDataSource: Equatable, Identifiable {
    var id: String = ""
    var name: String = ""
    var species: String = ""
    var gender: String = ""
    var house: String = ""
    var dateOfBirth: String? = nil
    var wizard: Bool = true
    var ancestry: String = ""
    var eyeColour: String = ""
    var hairColour: String = ""
    var wand: WandDataSource = .init(wood: "", core: "", length: 0)
    var patronus: String = ""
    var hogwartsStudent: Bool = true
    var hogwartsStaff: Bool = true
    var actor: String = ""
    var alive: Bool = true
    var image: String = ""
}

struct WandDataSource: Equatable {
    var wood: String = ""
    var core: String = ""
    var length: Double? = nil
}
