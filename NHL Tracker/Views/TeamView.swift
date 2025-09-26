//
//  TeamView.swift
//  NHL Tracker
//
//  Created by Michael Harrison on 9/26/25.
//

import SwiftUI

struct TeamView: View {
    @StateObject private var viewModel = TeamViewModel()
    var body: some View {
        Text("This is the team view Model")
    }
}

#Preview {
    TeamView()
}
