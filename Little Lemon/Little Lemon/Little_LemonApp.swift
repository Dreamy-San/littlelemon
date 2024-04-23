//
//  Little_LemonApp.swift
//  Little Lemon
//
//  Created by Micah Scott Jr on 4/23/24.
//

import SwiftUI

@main
struct Retaurant: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Onboarding()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
