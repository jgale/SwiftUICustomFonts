import UIKit

extension Bundle {
    private class CurrentBundleFinder {}

    /// This is used to allow you to use resources from DesignSystem in other Swift Package previews.
    /// Inspiration from here: https://developer.apple.com/forums/thread/664295
    public static var designSystem: Bundle = {
        // The name of your local package bundle. This may change on every different version of Xcode.
        // It used to be "LocalPackages_<ModuleName>" for iOS. To find out what it is, print out  the path for
        // Bundle(for: CurrentBundleFinder.self).resourceURL?.deletingLastPathComponent().deletingLastPathComponent()
        // and then look for what bundle is named in there.
        let bundleNameIOS = "CustomFontsPackage_DesignSystem"
        let candidates = [
            // Bundle should be present here when the package is linked into an App.
            Bundle.main.resourceURL,
            // Bundle should be present here when the package is linked into a framework.
            Bundle(for: CurrentBundleFinder.self).resourceURL,
            // For command-line tools.
            Bundle.main.bundleURL,
            // Bundle should be present here when running previews from a different package
            // (this is the path to "…/Debug-iphonesimulator/").
            Bundle(for: CurrentBundleFinder.self)
                .resourceURL?
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .deletingLastPathComponent(),
            Bundle(for: CurrentBundleFinder.self)
                .resourceURL?
                .deletingLastPathComponent()
                .deletingLastPathComponent(),
        ]

        for candidate in candidates {
            let bundlePathiOS = candidate?.appendingPathComponent(bundleNameIOS + ".bundle")
            if let bundle = bundlePathiOS.flatMap(Bundle.init(url:)) {
                return bundle
            }
        }
        fatalError("Can't find designSystem custom bundle. See Bundle+Extensions.swift")
    }()
}
