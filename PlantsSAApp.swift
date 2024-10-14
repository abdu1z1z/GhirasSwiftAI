//
//  PlantsSAApp.swift
//  PlantsSA
//
//  Created by abdulaziz on 29/10/1445 AH.
//

import SwiftUI

@main
struct PlantsSAApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Home()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
