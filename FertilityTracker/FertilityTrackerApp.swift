//
//  FertilityTrackerApp.swift
//  FertilityTracker
//
//  Created by Daniel Carr on 5/17/22.
//

import SwiftUI

@main
struct FertilityTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CalendarView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
