import SwiftUI

extension Font {
    public static let largeTitleCustom = Font.custom("Lobster-Regular", size: 34, relativeTo: .largeTitle)
    public static let titleCustom = Font.custom("Lobster-Regular", size: 28, relativeTo: .title)
    public static let title2Custom = Font.custom("Lobster-Regular", size: 22, relativeTo: .title2)
    public static let title3Custom = Font.custom("Lobster-Regular", size: 20, relativeTo: .title3)
    public static let headlineCustom = Font.custom("Lobster-Regular", size: 17, relativeTo: .headline)
    public static let subheadlineCustom = Font.custom("Lobster-Regular", size: 15, relativeTo: .subheadline)
    public static let bodyCustom = Font.custom("SyneMono-Regular", size: 17, relativeTo: .body)
    public static let calloutCustom = Font.custom("SyneMono-Regular", size: 16, relativeTo: .callout)
    public static let footnoteCustom = Font.custom("SyneMono-Regular", size: 13, relativeTo: .footnote)
    public static let captionCustom = Font.custom("SyneMono-Regular", size: 12, relativeTo: .caption)
    public static let caption2Custom = Font.custom("SyneMono-Regular", size: 11, relativeTo: .caption2)
}

public enum CustomFonts {
    public static func registerCustomFonts() {
        for font in ["SyneMono-Regular.ttf", "Lobster-Regular.ttf"] {
            guard let url = Bundle.designSystem.url(forResource: font, withExtension: nil) else { return }
            CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
        }
    }
}

extension View {
    /// Attach this to any Xcode Preview's view to have custom fonts displayed
    /// Note: Not needed for the actual app
    public func loadCustomFonts() -> some View {
        CustomFonts.registerCustomFonts()
        return self
    }
}
