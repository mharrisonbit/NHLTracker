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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button(action: {
                Task {
                    await viewModel.GetTeamsData()
                }
            }) {
                Text("Get Teams")
            }
        }
        .padding()
    }
}

#Preview {
    TrackerHomeView()
}
