//
//  Life_CounterApp.swift
//  Life Counter
//
//  Created by John Hall on 8/31/22.
//

import SwiftUI

@main
struct Life_CounterApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
