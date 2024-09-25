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
       // .package(name: "DzBase", url: "https://github.com/archit-dhupar/DzBase.git", .upToNextMajor(from: "0.0.1"))
    ],
    targets: [
      
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "DzAVPlayerAdapter",
            url: "https://gitlab.com/archit.dhupar/DzTestPod/-/blob/main/sources/0.0.1/DzAVPlayerAdapter.zip",
            checksum: "f87131dc994cab0e33277a2d6ee593cfc165ee5c5a5849356b07f87ff81ba64a"),
         // .binaryTarget(
         //    name: "DzBase",
         //    url: "https://github.com/archit-dhupar/DzBase/releases/download/0.0.1/DzBase.xcframework.zip",
         //    checksum: "32a301293d83d3e32a2f6269bcb5a67f75ddbca139eefd3b60978170247cf346"),
    ],
    swiftLanguageVersions: [.v5]
)

