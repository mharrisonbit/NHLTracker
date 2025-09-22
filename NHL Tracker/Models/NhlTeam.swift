// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let nhlTeam = try NhlTeam(json)

import Foundation

// MARK: - NhlTeam
struct NhlTeam: Codable {
    let data: [Datum]
    let total: Int
}

// MARK: NhlTeam convenience initializers and mutators

extension NhlTeam {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(NhlTeam.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        data: [Datum]? = nil,
        total: Int? = nil
    ) -> NhlTeam {
        return NhlTeam(
            data: data ?? self.data,
            total: total ?? self.total
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Datum
struct Datum: Codable {
    let id: Int
    let franchiseID: Int?
    let fullName: String
    let leagueID: Int
    let rawTricode, triCode: String

    enum CodingKeys: String, CodingKey {
        case id
        case franchiseID = "franchiseId"
        case fullName
        case leagueID = "leagueId"
        case rawTricode, triCode
    }
}

// MARK: Datum convenience initializers and mutators

extension Datum {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Datum.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int? = nil,
        franchiseID: Int?? = nil,
        fullName: String? = nil,
        leagueID: Int? = nil,
        rawTricode: String? = nil,
        triCode: String? = nil
    ) -> Datum {
        return Datum(
            id: id ?? self.id,
            franchiseID: franchiseID ?? self.franchiseID,
            fullName: fullName ?? self.fullName,
            leagueID: leagueID ?? self.leagueID,
            rawTricode: rawTricode ?? self.rawTricode,
            triCode: triCode ?? self.triCode
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}
