// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VerdePackage",
    products: [
            platforms: [
        .iOS(.v15.6, // Supported platforms
    ],
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "VerdePackage",
            targets: ["VerdePackage"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "VerdePackage"),
        .testTarget(
            name: "VerdePackageTests",
            dependencies: ["VerdePackage"]
        ),
    ]
)

import PackageDescription

let package = Package(
    name: "VerdePackage",
    platforms: [
        .iOS(.v15),  // Specify the platforms you support
    ],
    products: [
        .library(
            name: "VerdePackage",
            targets: ["MeiVideo"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "MeiVideo",
            path: "./XCFrameworks/MeiVideo.xcframework"
        ),
    ]
)