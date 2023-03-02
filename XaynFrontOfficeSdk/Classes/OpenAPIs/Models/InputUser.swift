//
// InputUser.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Information about a user provided as input for an search  Currently this can _either_ be the user&#39;s &#x60;id&#x60; or a user&#39;s &#x60;history&#x60;.  */
public struct InputUser: Codable, JSONEncodable, Hashable {

    static let idRule = StringRule(minLength: 1, maxLength: 256, pattern: "/^[a-zA-Z0-9_:@.\\-]+$/")
    /** An id can be any non-empty string that consist of digits, latin letters, underscores, colons, minus signs, at signs, and dots. */
    public var id: String?
    /** The history is an sequence of entries representing documents visited by the user.  It is ordered from the  \"oldest\" interaction at index 0 to the \"newest\" interaction at the highest index.  History entries do not need to have a timestamp, if no timestamp is given it is approximated in some way based on timestamps of neighboring documents and if non have a timestamp they are all assumed to have happened \"just now\" for simplicity. */
    public var history: [HistoryEntry]?

    public init(id: String? = nil, history: [HistoryEntry]? = nil) {
        self.id = id
        self.history = history
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case history
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(history, forKey: .history)
    }
}

