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

    static let countRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 100, exclusiveMaximum: false, multipleOf: nil)
    static let minSimilarityRule = NumericRule<Float>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    public var document: InputDocument
    public var count: Int? = 10
    /** A RFC3339 compatible date-time  - can be in the future - will be converted to and then stored as UTC - sub-second resolution is not guaranteed. - while `properties.publication_date` is in the future the document will not be   returned for personalized documents, once it is no longer in the future it will   automatically be considered for personalization from then on  */
    public var publishedAfter: Date?
    /** Minimal similarity of a document to consider it as search candidate. */
    public var minSimilarity: Float? = 0
    public var personalize: SemanticSearchRequestPersonalize?

    public init(document: InputDocument, count: Int? = 10, publishedAfter: Date? = nil, minSimilarity: Float? = 0, personalize: SemanticSearchRequestPersonalize? = nil) {
        self.document = document
        self.count = count
        self.publishedAfter = publishedAfter
        self.minSimilarity = minSimilarity
        self.personalize = personalize
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case document
        case count
        case publishedAfter = "published_after"
        case minSimilarity = "min_similarity"
        case personalize
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(document, forKey: .document)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(publishedAfter, forKey: .publishedAfter)
        try container.encodeIfPresent(minSimilarity, forKey: .minSimilarity)
        try container.encodeIfPresent(personalize, forKey: .personalize)
    }
}

