// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let nhlTeamStats = try NhlTeamStats(json)

import Foundation

// MARK: - NhlTeamStats
struct NhlTeamStats: Codable {
    let season: String
    let gameType: Int
    let skaters: [Skater]
    let goalies: [Goalie]
}

// MARK: NhlTeamStats convenience initializers and mutators

extension NhlTeamStats {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(NhlTeamStats.self, from: data)
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
        season: String? = nil,
        gameType: Int? = nil,
        skaters: [Skater]? = nil,
        goalies: [Goalie]? = nil
    ) -> NhlTeamStats {
        return NhlTeamStats(
            season: season ?? self.season,
            gameType: gameType ?? self.gameType,
            skaters: skaters ?? self.skaters,
            goalies: goalies ?? self.goalies
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Goalie
struct Goalie: Codable {
    let playerID: Int
    let headshot: String
    let firstName, lastName: StName
    let gamesPlayed, gamesStarted, wins, losses: Int
    let overtimeLosses: Int
    let goalsAgainstAverage, savePercentage: Double
    let shotsAgainst, saves, goalsAgainst, shutouts: Int
    let goals, assists, points, penaltyMinutes: Int
    let timeOnIce: Int

    enum CodingKeys: String, CodingKey {
        case playerID = "playerId"
        case headshot, firstName, lastName, gamesPlayed, gamesStarted, wins, losses, overtimeLosses, goalsAgainstAverage, savePercentage, shotsAgainst, saves, goalsAgainst, shutouts, goals, assists, points, penaltyMinutes, timeOnIce
    }
}

// MARK: Goalie convenience initializers and mutators

extension Goalie {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Goalie.self, from: data)
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
        playerID: Int? = nil,
        headshot: String? = nil,
        firstName: StName? = nil,
        lastName: StName? = nil,
        gamesPlayed: Int? = nil,
        gamesStarted: Int? = nil,
        wins: Int? = nil,
        losses: Int? = nil,
        overtimeLosses: Int? = nil,
        goalsAgainstAverage: Double? = nil,
        savePercentage: Double? = nil,
        shotsAgainst: Int? = nil,
        saves: Int? = nil,
        goalsAgainst: Int? = nil,
        shutouts: Int? = nil,
        goals: Int? = nil,
        assists: Int? = nil,
        points: Int? = nil,
        penaltyMinutes: Int? = nil,
        timeOnIce: Int? = nil
    ) -> Goalie {
        return Goalie(
            playerID: playerID ?? self.playerID,
            headshot: headshot ?? self.headshot,
            firstName: firstName ?? self.firstName,
            lastName: lastName ?? self.lastName,
            gamesPlayed: gamesPlayed ?? self.gamesPlayed,
            gamesStarted: gamesStarted ?? self.gamesStarted,
            wins: wins ?? self.wins,
            losses: losses ?? self.losses,
            overtimeLosses: overtimeLosses ?? self.overtimeLosses,
            goalsAgainstAverage: goalsAgainstAverage ?? self.goalsAgainstAverage,
            savePercentage: savePercentage ?? self.savePercentage,
            shotsAgainst: shotsAgainst ?? self.shotsAgainst,
            saves: saves ?? self.saves,
            goalsAgainst: goalsAgainst ?? self.goalsAgainst,
            shutouts: shutouts ?? self.shutouts,
            goals: goals ?? self.goals,
            assists: assists ?? self.assists,
            points: points ?? self.points,
            penaltyMinutes: penaltyMinutes ?? self.penaltyMinutes,
            timeOnIce: timeOnIce ?? self.timeOnIce
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - StName
struct StName: Codable {
    let stNameDefault: String

    enum CodingKeys: String, CodingKey {
        case stNameDefault = "default"
    }
}

// MARK: StName convenience initializers and mutators

extension StName {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(StName.self, from: data)
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
        stNameDefault: String? = nil
    ) -> StName {
        return StName(
            stNameDefault: stNameDefault ?? self.stNameDefault
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Skater
struct Skater: Codable {
    let playerID: Int
    let headshot: String
    let firstName: StName
    let lastName: LastName
    let positionCode: PositionCode
    let gamesPlayed, goals, assists, points: Int
    let plusMinus, penaltyMinutes, powerPlayGoals, shorthandedGoals: Int
    let gameWinningGoals, overtimeGoals, shots: Int
    let shootingPctg, avgTimeOnIcePerGame, avgShiftsPerGame, faceoffWinPctg: Double

    enum CodingKeys: String, CodingKey {
        case playerID = "playerId"
        case headshot, firstName, lastName, positionCode, gamesPlayed, goals, assists, points, plusMinus, penaltyMinutes, powerPlayGoals, shorthandedGoals, gameWinningGoals, overtimeGoals, shots, shootingPctg, avgTimeOnIcePerGame, avgShiftsPerGame, faceoffWinPctg
    }
}

// MARK: Skater convenience initializers and mutators

extension Skater {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Skater.self, from: data)
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
        playerID: Int? = nil,
        headshot: String? = nil,
        firstName: StName? = nil,
        lastName: LastName? = nil,
        positionCode: PositionCode? = nil,
        gamesPlayed: Int? = nil,
        goals: Int? = nil,
        assists: Int? = nil,
        points: Int? = nil,
        plusMinus: Int? = nil,
        penaltyMinutes: Int? = nil,
        powerPlayGoals: Int? = nil,
        shorthandedGoals: Int? = nil,
        gameWinningGoals: Int? = nil,
        overtimeGoals: Int? = nil,
        shots: Int? = nil,
        shootingPctg: Double? = nil,
        avgTimeOnIcePerGame: Double? = nil,
        avgShiftsPerGame: Double? = nil,
        faceoffWinPctg: Double? = nil
    ) -> Skater {
        return Skater(
            playerID: playerID ?? self.playerID,
            headshot: headshot ?? self.headshot,
            firstName: firstName ?? self.firstName,
            lastName: lastName ?? self.lastName,
            positionCode: positionCode ?? self.positionCode,
            gamesPlayed: gamesPlayed ?? self.gamesPlayed,
            goals: goals ?? self.goals,
            assists: assists ?? self.assists,
            points: points ?? self.points,
            plusMinus: plusMinus ?? self.plusMinus,
            penaltyMinutes: penaltyMinutes ?? self.penaltyMinutes,
            powerPlayGoals: powerPlayGoals ?? self.powerPlayGoals,
            shorthandedGoals: shorthandedGoals ?? self.shorthandedGoals,
            gameWinningGoals: gameWinningGoals ?? self.gameWinningGoals,
            overtimeGoals: overtimeGoals ?? self.overtimeGoals,
            shots: shots ?? self.shots,
            shootingPctg: shootingPctg ?? self.shootingPctg,
            avgTimeOnIcePerGame: avgTimeOnIcePerGame ?? self.avgTimeOnIcePerGame,
            avgShiftsPerGame: avgShiftsPerGame ?? self.avgShiftsPerGame,
            faceoffWinPctg: faceoffWinPctg ?? self.faceoffWinPctg
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - LastName
struct LastName: Codable {
    let lastNameDefault: String
    let cs, fi, sk, sv: String?

    enum CodingKeys: String, CodingKey {
        case lastNameDefault = "default"
        case cs, fi, sk, sv
    }
}

// MARK: LastName convenience initializers and mutators

extension LastName {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(LastName.self, from: data)
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
        lastNameDefault: String? = nil,
        cs: String?? = nil,
        fi: String?? = nil,
        sk: String?? = nil,
        sv: String?? = nil
    ) -> LastName {
        return LastName(
            lastNameDefault: lastNameDefault ?? self.lastNameDefault,
            cs: cs ?? self.cs,
            fi: fi ?? self.fi,
            sk: sk ?? self.sk,
            sv: sv ?? self.sv
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum PositionCode: String, Codable {
    case c = "C"
    case d = "D"
    case l = "L"
    case r = "R"
}

// MARK: - Helper functions for creating encoders and decoders

//func newJSONDecoder() -> JSONDecoder {
//    let decoder = JSONDecoder()
//    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
//        decoder.dateDecodingStrategy = .iso8601
//    }
//    return decoder
//}

//func newJSONEncoder() -> JSONEncoder {
//    let encoder = JSONEncoder()
//    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
//        encoder.dateEncodingStrategy = .iso8601
//    }
//    return encoder
//}
