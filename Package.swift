// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "APSSPSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "APSSPSDK", targets: ["APSSPSDK"]),
        .library(name: "APSSPMediationAdMob", targets: ["MediationAdMob"]),
        .library(name: "APSSPMediationADOP", targets: ["MediationADOP"]),
        .library(name: "APSSPMediationGAM", targets: ["MediationGAM"]),
        .library(name: "APSSPMediationAdForus", targets: ["MediationAdForus"]),
        .library(name: "APSSPMediationAppLovin", targets: ["MediationAppLovin"]),
        .library(name: "APSSPMediationAppLovinMax", targets: ["MediationAppLovinMax"]),
        .library(name: "APSSPMediationVungle", targets: ["MediationVungle"]),
        .library(name: "APSSPMediationMintegral", targets: ["MediationMintegral"]),
        .library(name: "APSSPMediationNAM", targets: ["MediationNAM"]),
        .library(name: "APSSPMediationAdFit", targets: ["MediationAdFit"]),
        .library(name: "APSSPMediationMezzo", targets: ["MediationMezzo"]),
    ],

    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
                 "13.2.0"..."13.3.0"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
                 "13.5.0"..."13.6.2"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git",
                 "7.7.0"..."7.7.2"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git",
                 "8.0.0"..."8.1.3"),
        .package(url: "https://github.com/naver/nam-sdk-ios.git",
                 "8.20.0"..."8.21.0"),
        .package(url: "https://github.com/adfit/adfit-spm.git",
                 "3.21.0"..."3.21.24"),
    ],

    targets: [
        // MARK: - APSSPSDK 코어 (binaryTarget — dynamic xcframework)
        .binaryTarget(name: "APSSPSDK",
                      path: "xcframework/APSSPSDK.xcframework"),

        // MARK: - AdMob
        .target(name: "MediationAdMob",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                ],
                path: "Sources/MediationAdMob"),

        // MARK: - ADOP
        .target(name: "MediationADOP",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                ],
                path: "Sources/MediationADOP"),

        // MARK: - GAM
        .target(name: "MediationGAM",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                ],
                path: "Sources/MediationGAM"),

        // MARK: - AdForus
        .target(name: "MediationAdForus",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                ],
                path: "Sources/MediationAdForus"),

        // MARK: - AppLovin MAX
        .target(name: "MediationAppLovinMax",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                ],
                path: "Sources/MediationAppLovinMax"),

        // MARK: - AppLovin Waterfall
        .target(name: "MediationAppLovin",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                ],
                path: "Sources/MediationAppLovin"),

        // MARK: - Vungle
        .target(name: "MediationVungle",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                ],
                path: "Sources/MediationVungle"),

        // MARK: - Mintegral
        .target(name: "MediationMintegral",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
                ],
                path: "Sources/MediationMintegral"),

        // MARK: - NAM
        .target(name: "MediationNAM",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "GFPSDK", package: "nam-sdk-ios"),
                ],
                path: "Sources/MediationNAM"),

        // MARK: - AdFit
        .target(name: "MediationAdFit",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "AdFitSDK", package: "adfit-spm"),
                ],
                path: "Sources/MediationAdFit"),

        // MARK: - Mezzo
        .binaryTarget(name: "LibADPlus",
                      path: "xcframework/LibADPlus.xcframework"),
        .binaryTarget(name: "OMSDK_Cjnet",
                      path: "xcframework/OMSDK_Cjnet.xcframework"),
        .target(name: "MediationMezzo",
                dependencies: [
                    "APSSPSDK",
                    "LibADPlus",
                    "OMSDK_Cjnet",
                ],
                path: "Sources/MediationMezzo"),
    ]
)
