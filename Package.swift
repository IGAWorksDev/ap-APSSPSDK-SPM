// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "APSSPSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "APSSPSDK", targets: ["APSSPSDK"]),
    ],
    targets: [
        // MARK: - APSSPSDK 코어 (binaryTarget — dynamic xcframework)
        .binaryTarget(name: "APSSPSDK",
                      path: "xcframework/APSSPSDK.xcframework"),
    ]
)
