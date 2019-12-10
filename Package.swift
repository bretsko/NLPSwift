// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "NLP_Playground",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "NLP_Playground",
            targets: ["NLP_Playground"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "NLP_Playground",
            dependencies: []),
        // .testTarget(
        //     name: "NLP_PlaygroundTests",
        //     dependencies: ["NLP_Playground"]),
    ]
)
