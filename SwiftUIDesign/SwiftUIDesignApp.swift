import SwiftUI

@main
struct SwiftUIDesignApp: App {
    var body: some Scene {
        WindowGroup {
            ListView().environmentObject(UsersModelData())
        }
    }
}
