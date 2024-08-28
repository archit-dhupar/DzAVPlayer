// swift-tools-version:5.7.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DzAVPlayer",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DzAVPlayerAdapter",
            targets: ["DzAVPlayerAdapter"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
      
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "DzAVPlayerAdapter",
            url: "https://github.com/archit-dhupar/DzAVPlayer/releases/download/0.0.2/DzAVPlayerAdapter.xcframework.zip",
            checksum: "2e45a36e413dd408994430defd9d6f75463e0d832688b590b67697cd750c7c58"),
    ],
    swiftLanguageVersions: [.v5]
)

