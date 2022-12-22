//
// PersonalizedDocumentsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PersonalizedDocumentsResponse: Codable, JSONEncodable, Hashable {

    public var documents: [PersonalizedDocumentData]

    public init(documents: [PersonalizedDocumentData]) {
        self.documents = documents
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case documents
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(documents, forKey: .documents)
    }
}

