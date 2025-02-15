//
//  ruler_of_the_realmApp.swift
//  ruler-of-the-realm
//
//  Created by Daniel Herman on 2/15/25.
//

import SwiftUI

@main
struct ruler_of_the_realmApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
