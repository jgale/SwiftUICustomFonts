import SwiftUI

public struct LogoView: View {
    public init() {}

    public var body: some View {
        VStack {
            Image("logo", bundle: .designSystem)
                .resizable()
                .frame(width: 80, height: 80)
            
            Text("Creative Commons")
                .font(.bodyCustom)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .loadCustomFonts()
    }
}
