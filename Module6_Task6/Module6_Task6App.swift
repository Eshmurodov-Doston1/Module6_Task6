//
//  Module6_Task6App.swift
//  Module6_Task6
//
//  Created by macbro on 08/05/22.
//

import SwiftUI

@main
struct Module6_Task6App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
