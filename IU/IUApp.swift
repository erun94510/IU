//
//  IUApp.swift
//  IU
//
//  Created by Donghoon Bae on 2022/06/29.
//

import SwiftUI

@main
struct IUApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
