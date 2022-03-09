//
//  SwiftUICustomFontsApp.swift
//  SwiftUICustomFonts
//
//  Created by Jeremy Gale on 03/09/22.
//

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
