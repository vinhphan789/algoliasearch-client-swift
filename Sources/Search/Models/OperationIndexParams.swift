// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

public struct OperationIndexParams: Codable, JSONEncodable {
    public var operation: OperationType
    /// Index name (case-sensitive).
    public var destination: String
    /// **Only for copying.**  If you specify a scope, only the selected scopes are copied. Records and the other scopes
    /// are left unchanged. If you omit the `scope` parameter, everything is copied: records, settings, synonyms, and
    /// rules.
    public var scope: [ScopeType]?

    public init(operation: OperationType, destination: String, scope: [ScopeType]? = nil) {
        self.operation = operation
        self.destination = destination
        self.scope = scope
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case operation
        case destination
        case scope
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.operation, forKey: .operation)
        try container.encode(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.scope, forKey: .scope)
    }
}

extension OperationIndexParams: Equatable {
    public static func ==(lhs: OperationIndexParams, rhs: OperationIndexParams) -> Bool {
        lhs.operation == rhs.operation &&
            lhs.destination == rhs.destination &&
            lhs.scope == rhs.scope
    }
}

extension OperationIndexParams: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.operation.hashValue)
        hasher.combine(self.destination.hashValue)
        hasher.combine(self.scope?.hashValue)
    }
}
