// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FontLoaderKit",
    platforms: [.iOS(.v26), .macOS(.v26), .macCatalyst(.v26)],
    products: [
        .library(
            name: "FontLoaderKit",
            type: .dynamic,
            targets: ["FontLoaderKit"]
        ),
    ],
    targets: [
        .target(
            name: "FontLoaderKit"
        ),
        .testTarget(
            name: "FontLoaderKitTests",
            dependencies: ["FontLoaderKit"]
        ),
    ]
)
