// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Package",
    defaultLocalization: "ja",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(name: "App", targets: ["App"]),
    ],
    dependencies: [
        .package(url: "https://github.com/realm/SwiftLint", from: "0.54.0"),
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.50.4"),
    ],
    targets: [
        .target(name: "App"),
    ]
)

for target in package.targets {
    if target.plugins != nil {
        target.plugins?.append(.swiftLintPlugin)
        
    } else {
        target.plugins = [.swiftLintPlugin]
    }
}

// MARK: - Module
private enum Module {
    static let app = "App"
}

// MARK: - Extension Target Dependency
private extension PackageDescription.Target.Dependency {
    static let app: Self = .target(name: Module.app)
}

// MARK: - Extension Target PluginUsage
private extension PackageDescription.Target.PluginUsage {
    static let swiftLintPlugin: Self = .plugin(name: "SwiftLintPlugin", package: "SwiftLint")
}
