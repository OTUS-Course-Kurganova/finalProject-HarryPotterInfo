//
// Items.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Items: Codable, JSONEncodable, Hashable {

    public var id: String = ""
    public var name: String = ""
    public var alternateNames: [String]
    public var species: String = ""
    public var gender: String = ""
    public var house: String = ""
    public var dateOfBirth: String = ""
    public var yearOfBirth: Int = 0
    public var wizard: Bool = true
    public var ancestry: String = ""
    public var eyeColour: String = ""
    public var hairColour: String = ""
    public var wand: Wand
    public var patronus: String = ""
    public var hogwartsStudent: Bool = true
    public var hogwartsStaff: Bool = true
    public var actor: String = ""
    public var alternateActors: [String]
    public var alive: Bool = true
    public var image: String = ""

    public init(id: String = "", name: String = "", alternateNames: [String], species: String = "", gender: String = "", house: String = "", dateOfBirth: String = "", yearOfBirth: Int = 0, wizard: Bool = true, ancestry: String = "", eyeColour: String = "", hairColour: String = "", wand: Wand, patronus: String = "", hogwartsStudent: Bool = true, hogwartsStaff: Bool = true, actor: String = "", alternateActors: [String], alive: Bool = true, image: String = "") {
        self.id = id
        self.name = name
        self.alternateNames = alternateNames
        self.species = species
        self.gender = gender
        self.house = house
        self.dateOfBirth = dateOfBirth
        self.yearOfBirth = yearOfBirth
        self.wizard = wizard
        self.ancestry = ancestry
        self.eyeColour = eyeColour
        self.hairColour = hairColour
        self.wand = wand
        self.patronus = patronus
        self.hogwartsStudent = hogwartsStudent
        self.hogwartsStaff = hogwartsStaff
        self.actor = actor
        self.alternateActors = alternateActors
        self.alive = alive
        self.image = image
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case alternateNames = "alternate_names"
        case species
        case gender
        case house
        case dateOfBirth
        case yearOfBirth
        case wizard
        case ancestry
        case eyeColour
        case hairColour
        case wand
        case patronus
        case hogwartsStudent
        case hogwartsStaff
        case actor
        case alternateActors = "alternate_actors"
        case alive
        case image
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(alternateNames, forKey: .alternateNames)
        try container.encode(species, forKey: .species)
        try container.encode(gender, forKey: .gender)
        try container.encode(house, forKey: .house)
        try container.encode(dateOfBirth, forKey: .dateOfBirth)
        try container.encode(yearOfBirth, forKey: .yearOfBirth)
        try container.encode(wizard, forKey: .wizard)
        try container.encode(ancestry, forKey: .ancestry)
        try container.encode(eyeColour, forKey: .eyeColour)
        try container.encode(hairColour, forKey: .hairColour)
        try container.encode(wand, forKey: .wand)
        try container.encode(patronus, forKey: .patronus)
        try container.encode(hogwartsStudent, forKey: .hogwartsStudent)
        try container.encode(hogwartsStaff, forKey: .hogwartsStaff)
        try container.encode(actor, forKey: .actor)
        try container.encode(alternateActors, forKey: .alternateActors)
        try container.encode(alive, forKey: .alive)
        try container.encode(image, forKey: .image)
    }
}
