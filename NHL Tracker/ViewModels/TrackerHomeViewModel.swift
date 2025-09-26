//
//  TrackerHomeViewModel.swift
//  NHL Tracker
//
//  Created by Michael Harrison on 9/22/25.
//

import Foundation
import Combine

final class TrackerHomeViewModel: ObservableObject {
    @Published var nhlTeams: [Datum] = []

    let apiCalls = NetworkManager()
    
    func GetTeamsData() async {
        do {
            let results = try await apiCalls.getTeams() // Assumes this returns a JSON string
            
            guard let jsonData = results.data(using: .utf8) else {
                print("Failed to convert result string to Data")
                return
            }

            let decoded = try JSONDecoder().decode(NhlTeam.self, from: jsonData)
            DispatchQueue.main.async {
                self.nhlTeams = decoded.data
            }
        } catch {
            print("Failed to fetch teams: \(error)")
        }
    }
    
    func getDataForTeam(for team: Datum) async {
        do{
            let results = try await apiCalls.getTeamStats(teamCode: team.triCode);
            let nhlTeamStats = try NhlTeamStats(results)
            let teamViewModel = TeamViewModel(data: <#T##NhlTeamStats#>)
            
        
//            nhlTeamStats.skaters.forEach{skater in
//                print("Skater's name: \(skater)  \(skater.lastName)")
//            }
//            print(nhlTeamStats)
        }catch {
            print(error)
        }
    }
}

