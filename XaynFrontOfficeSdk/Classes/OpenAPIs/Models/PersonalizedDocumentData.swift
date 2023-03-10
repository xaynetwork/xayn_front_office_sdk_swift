//
// PersonalizedDocumentData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PersonalizedDocumentData: Codable, JSONEncodable, Hashable {

    static let idRule = StringRule(minLength: 1, maxLength: 256, pattern: "/^[a-zA-Z0-9_:@.\\-]+$/")
    /** An id can be any non-empty string that consist of digits, latin letters, underscores, colons, minus signs, at signs, and dots. */
    public var id: String
    public var score: Double
    public var properties: DocumentProperties?

    public init(id: String, score: Double, properties: DocumentProperties? = nil) {
        self.id = id
        self.score = score
        self.properties = properties
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case score
        case properties
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(score, forKey: .score)
        try container.encodeIfPresent(properties, forKey: .properties)
    }
}

