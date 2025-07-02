import SwiftUI

@main
struct CoreDataCharacterApp: App {
    @StateObject private var storeCoordinator = CoreDataManager()

    var body: some Scene {
        WindowGroup {
            CharacterView()
                .environment(\.managedObjectContext, storeCoordinator.container.viewContext)
        }
    }
}
