// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// Filters to promote or demote records in the search results.  Optional filters work like facet filters, but they
/// don't exclude records from the search results. Records that match the optional filter rank before records that don't
/// match. If you're using a negative filter `facet:-value`, matching records rank after records that don't match.  -
/// Optional filters don't work on virtual replicas. - Optional filters are applied _after_ sort-by attributes. -
/// Optional filters are applied _before_ custom ranking attributes (in the default
/// [ranking](https://www.algolia.com/doc/guides/managing-results/relevance-overview/in-depth/ranking-criteria/)). -
/// Optional filters don't work with numeric attributes.
public enum SearchOptionalFilters: Codable, JSONEncodable, AbstractEncodable {
    case arrayOfSearchOptionalFilters([SearchOptionalFilters])
    case string(String)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .arrayOfSearchOptionalFilters(value):
            try container.encode(value)
        case let .string(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode([SearchOptionalFilters].self) {
            self = .arrayOfSearchOptionalFilters(value)
        } else if let value = try? container.decode(String.self) {
            self = .string(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unable to decode instance of SearchOptionalFilters"
                )
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .arrayOfSearchOptionalFilters(value):
            value as [SearchOptionalFilters]
        case let .string(value):
            value as String
        }
    }
}

extension SearchOptionalFilters: Equatable {}
extension SearchOptionalFilters: Hashable {}
