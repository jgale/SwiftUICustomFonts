// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "CustomFontsPackage",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(name: "FeatureModule", targets: ["FeatureModule"]),
        .library(name: "DesignSystem", targets: ["DesignSystem"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FeatureModule",
            dependencies: [
                "DesignSystem",
            ]
        ),
        .target(
            name: "DesignSystem",
            dependencies: [],
            resources: [
                .process("Sources/Resources"),
            ]
        ),
    ]
)
