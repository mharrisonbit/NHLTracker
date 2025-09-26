//
//  TeamViewModel.swift
//  NHL Tracker
//
//  Created by Michael Harrison on 9/26/25.
//

import Foundation
import Combine

final class TeamViewModel: ObservableObject {
    @Published var teamStats:NhlTeamStats?
    
    
    init(data:NhlTeamStats){
        self.teamStats = data;
    }
}
