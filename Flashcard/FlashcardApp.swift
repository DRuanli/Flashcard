//
//  FlashcardApp.swift
//  Flashcard
//
//  Created by Lê Nguyễn on 13/5/25.
//

import SwiftUI

@main
struct FlashcardApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
