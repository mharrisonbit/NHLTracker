//
//  TrackerHomeView.swift
//  NHL Tracker
//
//  Created by Michael Harrison on 9/22/25.
//

import SwiftUI

struct TrackerHomeView: View {
    @StateObject private var viewModel = TrackerHomeViewModel()
    
    var body: some View {
        VStack {
            // Button to load teams
            Button(action: {
                Task {
                    await viewModel.GetTeamsData()
                }
            }) {
                Text("Get Teams")
                    .font(.headline)
            }
            .padding()

            // List of teams
            List(viewModel.nhlTeams, id: \.id) { team in
                HStack {
//                    Text(team.fullName)
//                    Spacer()
                    Button(team.fullName) {
                           Task {
                               await viewModel.getDataForTeam(for: team)
                           }
                       }
                    .buttonStyle(BorderlessButtonStyle()) // Required for buttons inside lists
                }
            }
        }
        .padding()
    }
}


#Preview {
    TrackerHomeView()
}
