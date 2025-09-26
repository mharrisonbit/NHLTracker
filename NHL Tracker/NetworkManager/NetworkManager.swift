//
//  NetworkManager.swift
//  NHL Tracker
//
//  Created by Michael Harrison on 9/22/25.
//

import Foundation

class NetworkManager {
    private let baseURL = "https://api.nhle.com/"
    private let teamURL = "https://api-web.nhle.com/"
    
    func getTeams() async throws -> String {
        return try await makeTheCall(url: baseURL + "stats/rest/en/team")
    }
    
    func getTeamStats(teamCode:String) async throws -> String {
        return try await makeTheCall(url: teamURL + "v1/club-stats/\(teamCode)/now")
    }
    
    
    private func makeTheCall(url:String) async throws -> String {
        guard let url = URL(string:url) else {
            throw URLError(.badURL)
        }

        print("Requesting URL: \(url.absoluteString)")

        let (data, response) = try await URLSession.shared.data(from: url)

        // Optional: check HTTP status code
        if let httpResponse = response as? HTTPURLResponse {
            print("HTTP Status Code: \(httpResponse.statusCode)")
        }

        // Convert data to string for now
        if let jsonString = String(data: data, encoding: .utf8) {
            return jsonString
        } else {
            throw URLError(.cannotDecodeRawData)
        }
    }
}

