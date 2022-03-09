//
//  ContentView.swift
//  SwiftUICustomFonts
//
//  Created by Jeremy Gale on 03/09/22.
//

import DesignSystem
import SwiftUI
import FeatureModule

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Hello, world!")
                    .font(.largeTitleCustom)

                Text("This is in the main target")
                    .font(.bodyCustom)

                NavigationLink("Display Feature Module View") {
                    ModuleView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
