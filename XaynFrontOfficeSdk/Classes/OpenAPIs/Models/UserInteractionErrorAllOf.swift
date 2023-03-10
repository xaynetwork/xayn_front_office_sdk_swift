//
// UserInteractionErrorAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserInteractionErrorAllOf: Codable, JSONEncodable, Hashable {

    public enum Kind: String, Codable, CaseIterable {
        case invalidUserId = "InvalidUserId"
        case invalidDocumentId = "InvalidDocumentId"
    }
    public var kind: Kind

    public init(kind: Kind) {
        self.kind = kind
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case kind
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(kind, forKey: .kind)
    }
}

