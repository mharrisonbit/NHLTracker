//
//  TrackerHomeViewModel.swift
//  NHL Tracker
//
//  Created by Michael Harrison on 9/22/25.
//

import Foundation
import Combine

final class TrackerHomeViewModel: ObservableObject {
    @Published var isLoading = false
    let apiCalls = NetworkManager();
    
    func GetTeamsData() async{
        do {
                    isLoading = true
                    let results = try await apiCalls.getTeams()  // assuming this returns String
                    
                    guard let jsonData = results.data(using: .utf8) else {
                        print("Failed to convert results string to Data")
                        isLoading = false
                        return
                    }
                    
                    let nhlTeams = try JSONDecoder().decode(NhlTeam.self, from: jsonData)
                    
                    // Now you can iterate the teams safely
                    nhlTeams.data.forEach { team in
                        print(team)  // or whatever property you want
                    }
                    
                    isLoading = false
                } catch {
                    print("Failed to fetch teams: \(error.localizedDescription)")
                    isLoading = false
                }
    }
    
}
