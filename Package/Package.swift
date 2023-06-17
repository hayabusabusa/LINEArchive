// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Package",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AppFeature",
            targets: ["AppFeature"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AppFeature",
            dependencies: [
                "OnboardingFeature",
                "ShareTextFeature"
            ],
            path: "./Sources/Features/AppFeature"),
        .target(
            name: "OnboardingFeature",
            dependencies: [],
            path: "./Sources/Features/OnboardingFeature"),
        .target(
            name: "ShareTextFeature",
            dependencies: [
                "DomainProtocol"
            ],
            path: "./Sources/Features/ShareTextFeature"),
        .target(
            name: "Core",
            dependencies: []),
        .target(
            name: "Domain",
            dependencies: [
                "DomainProtocol"
            ]),
        .target(
            name: "DomainProtocol",
            dependencies: []),
        .testTarget(
            name: "PackageTests",
            dependencies: []),
    ]
)
