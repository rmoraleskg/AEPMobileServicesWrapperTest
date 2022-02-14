// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AEPMobileServicesWrapper",
    defaultLocalization: "en",
    platforms: [
      .iOS(.v11),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AEPMobileServicesWrapper",
            targets: ["AEPMobileServicesWrapper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/adobe/aepsdk-core-ios", from: "3.2.4"),
    ],
    targets: [
        .binaryTarget(
           name: "AEPMobileServicesWrapper",
           path: "AEPMobileServices.xcframework"
        )
    ]
)
