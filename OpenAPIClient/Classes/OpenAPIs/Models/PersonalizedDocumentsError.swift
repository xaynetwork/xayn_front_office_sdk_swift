//
// PersonalizedDocumentsError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PersonalizedDocumentsError: Codable, JSONEncodable, Hashable {

    public enum Kind: String, Codable, CaseIterable {
        case notEnoughInteractions = "NotEnoughInteractions"
    }
    /** Request ID optionally generated from the service. It can be communicated to xayn to help debugging. */
    public var requestId: String
    public var kind: Kind
    /** Additional error details. Might differ depending on debug options. */
    public var details: AnyCodable?

    public init(requestId: String, kind: Kind, details: AnyCodable? = nil) {
        self.requestId = requestId
        self.kind = kind
        self.details = details
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case requestId = "request_id"
        case kind
        case details
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(requestId, forKey: .requestId)
        try container.encode(kind, forKey: .kind)
        try container.encodeIfPresent(details, forKey: .details)
    }
}

