//
//  NetworkManager.swift
//  NHL Tracker
//
//  Created by Michael Harrison on 9/22/25.
//

import Foundation

class NetworkManager {
    private let baseURL = "https://api.nhle.com/"
    
    func getTeams() async throws -> String {
        guard let url = URL(string: baseURL + "stats/rest/en/team") else {
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

