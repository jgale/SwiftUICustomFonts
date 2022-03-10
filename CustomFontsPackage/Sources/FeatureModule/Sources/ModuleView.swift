import DesignSystem
import SwiftUI

public struct ModuleView: View {
    public init() {}

    public var body: some View {
        VStack(spacing: 30) {
            Text("Hello, Module!")
                .font(.largeTitleCustom)

            Text("This is in FeatureModule module. It is using custom fonts and LogoView from a different module, but the Xcode Preview works!")
                .font(.bodyCustom)
                .multilineTextAlignment(.center)

            LogoView()
        }
        .padding()
    }
}

struct ModuleView_Previews: PreviewProvider {
    static var previews: some View {
        ModuleView()
            .loadCustomFonts()
    }
}
