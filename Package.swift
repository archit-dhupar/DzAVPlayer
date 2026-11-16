
// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "DzAVPlayer",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "DzAVPlayerAdapter",
            targets: [
                "DzAVPlayerAdapter",
                "DzAVPlayerDependencies"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/archit-dhupar/DzBase.git",
            exact: "0.0.1"
        )
    ],
    targets: [
        .binaryTarget(
            name: "DzAVPlayerAdapter",
            url: "https://gitlab.com/archit.dhupar/DzTestPod/-/raw/main/sources/0.0.1/DzAVPlayerAdapter.zip?inline=false",
            checksum: "f87131dc994cab0e33277a2d6ee593cfc165ee5c5a5849356b07f87ff81ba64a"
        ),

        .target(
            name: "DzAVPlayerDependencies",
            dependencies: [
                "DzAVPlayerAdapter",
                .product(
                    name: "DzBase",
                    package: "DzBase"
                )
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
