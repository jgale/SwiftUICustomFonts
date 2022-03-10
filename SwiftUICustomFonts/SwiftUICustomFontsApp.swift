import DesignSystem
import SwiftUI

@main
struct SwiftUICustomFontsApp: App {

    init() {
        CustomFonts.registerCustomFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
