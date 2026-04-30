// swift-tools-version:6.3

import PackageDescription

let package = Package(
    name: "ArdentOakLanding",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "ArdentOakLanding",
            targets: ["ArdentOakLanding"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Publish.git", from: "0.9.0"),
        .package(url: "https://github.com/JohnSundell/Plot.git", from: "0.9.9")
    ],

    targets: [
        .executableTarget(
            name: "ArdentOakLanding",
            dependencies: [
                .product(name: "Publish", package: "Publish"),
                .product(name: "Plot", package: "Plot")
            ],
            resources: [
                .copy("./Resources")
            ]
        ),
/*
        .testTarget(
            name: "ArdentOakLandingTests",
            dependencies: ["ArdentOakLanding"]
        ),
*/
    ],
    swiftLanguageModes: [.v5]
)
