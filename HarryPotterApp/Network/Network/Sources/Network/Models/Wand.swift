//
// Wand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Wand: Codable, JSONEncodable, Hashable {

    public var wood: String = ""
    public var core: String = ""
    public var length: Int = 0

    public init(wood: String = "", core: String = "", length: Int = 0) {
        self.wood = wood
        self.core = core
        self.length = length
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case wood
        case core
        case length
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(wood, forKey: .wood)
        try container.encode(core, forKey: .core)
        try container.encode(length, forKey: .length)
    }
}
