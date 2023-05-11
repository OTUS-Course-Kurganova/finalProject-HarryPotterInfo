//
//  SkeletonListEnvironment.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 09.05.2023.
//

import Foundation
import Network

struct SkeletonListEnvironment {
    let network = APIAPI.self

    func getAllHogwartsStaff() async throws -> [PersonDataSource] {
        return try await network.charactersGet()
            .filter {!$0.image.isEmpty }
            .map { convertToPersonDataSource($0) }
    }

    fileprivate func convertToPersonDataSource(_ from: Person) -> PersonDataSource {
        .init(id: from.id, name: from.name, species: from.species, gender: from.gender, house: from.house,
              dateOfBirth: from.dateOfBirth, wizard: from.wizard, ancestry: from.ancestry, eyeColour: from.eyeColour,
              hairColour: from.hairColour, wand: WandDataSource(wood: from.wand.wood, core: from.wand.core, length: from.wand.length ?? nil),
              patronus: from.patronus, hogwartsStudent: from.hogwartsStudent, hogwartsStaff: from.hogwartsStaff,
              actor: from.actor, alive: from.alive, image: from.image)
    }
}
