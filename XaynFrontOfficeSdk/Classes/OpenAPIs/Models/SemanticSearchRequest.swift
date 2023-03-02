//
// SemanticSearchRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SemanticSearchRequest: Codable, JSONEncodable, Hashable {

    static let documentIdRule = StringRule(minLength: 1, maxLength: 256, pattern: "/^[a-zA-Z0-9_:@.\\-]+$/")
    static let countRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 100, exclusiveMaximum: false, multipleOf: nil)
    static let minSimilarityRule = NumericRule<Float>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    /** An id can be any non-empty string that consist of digits, latin letters, underscores, colons, minus signs, at signs, and dots. */
    public var documentId: String
    public var count: Int? = 10
    /** A RFC3339 compatible date-time  - can be in the future - will be converted to and then stored as UTC - sub-second resolution is not guaranteed. - while `properties.publication_date` is in the future the document will not be   returned for personalized documents, once it is no longer in the future it will   automatically be considered for personalization from then on  */
    public var publishedAfter: Date?
    /** Minimal similarity of a document to consider it as search candidate. */
    public var minSimilarity: Float? = 0
    public var personalize: SemanticSearchRequestPersonalize?

    public init(documentId: String, count: Int? = 10, publishedAfter: Date? = nil, minSimilarity: Float? = 0, personalize: SemanticSearchRequestPersonalize? = nil) {
        self.documentId = documentId
        self.count = count
        self.publishedAfter = publishedAfter
        self.minSimilarity = minSimilarity
        self.personalize = personalize
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case documentId = "document_id"
        case count
        case publishedAfter = "published_after"
        case minSimilarity = "min_similarity"
        case personalize
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(documentId, forKey: .documentId)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(publishedAfter, forKey: .publishedAfter)
        try container.encodeIfPresent(minSimilarity, forKey: .minSimilarity)
        try container.encodeIfPresent(personalize, forKey: .personalize)
    }
}

