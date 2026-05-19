// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "APSSPSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "APSSPSDK", targets: ["APSSPSDK"]),
        .library(name: "APSSPMediationAdMob", targets: ["APSSPMediationAdMob"]),
        .library(name: "APSSPMediationADOP", targets: ["APSSPMediationADOP"]),
        .library(name: "APSSPMediationGAM", targets: ["APSSPMediationGAM"]),
        .library(name: "APSSPMediationAdForus", targets: ["APSSPMediationAdForus"]),
        .library(name: "APSSPMediationAppLovin", targets: ["APSSPMediationAppLovin"]),
        .library(name: "APSSPMediationAppLovinMax", targets: ["APSSPMediationAppLovinMax"]),
        .library(name: "APSSPMediationVungle", targets: ["APSSPMediationVungle"]),
        .library(name: "APSSPMediationMintegral", targets: ["APSSPMediationMintegral"]),
        .library(name: "APSSPMediationNAM", targets: ["APSSPMediationNAM"]),
        .library(name: "APSSPMediationAdFit", targets: ["APSSPMediationAdFit"]),
        .library(name: "APSSPMediationMezzo", targets: ["APSSPMediationMezzo"]),
    ],

    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
                 exact: "13.2.0"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
                 exact: "13.6.2"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git",
                 exact: "7.7.2"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git",
                 exact: "8.1.1"),
        .package(url: "https://github.com/naver/nam-sdk-ios.git",
                 exact: "8.20.0"),
        .package(url: "https://github.com/adfit/adfit-spm.git",
                 exact: "3.21.24"),
    ],

    targets: [
        // MARK: - APSSPSDK 코어 (binaryTarget — dynamic xcframework)
        .binaryTarget(name: "APSSPSDK",
                      path: "xcframework/APSSPSDK.xcframework"),

        // MARK: - AdMob
        .target(name: "APSSPMediationAdMob",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                ],
                path: "Sources/MediationAdMob"),

        // MARK: - ADOP
        .target(name: "APSSPMediationADOP",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                ],
                path: "Sources/MediationADOP"),

        // MARK: - GAM
        .target(name: "APSSPMediationGAM",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                ],
                path: "Sources/MediationGAM"),

        // MARK: - AdForus
        .target(name: "APSSPMediationAdForus",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                ],
                path: "Sources/MediationAdForus"),

        // MARK: - AppLovin MAX
        .target(name: "APSSPMediationAppLovinMax",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                ],
                path: "Sources/MediationAppLovinMax"),

        // MARK: - AppLovin Waterfall
        .target(name: "APSSPMediationAppLovin",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                ],
                path: "Sources/MediationAppLovin"),

        // MARK: - Vungle
        .target(name: "APSSPMediationVungle",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                ],
                path: "Sources/MediationVungle"),

        // MARK: - Mintegral
        .target(name: "APSSPMediationMintegral",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
                ],
                path: "Sources/MediationMintegral"),

        // MARK: - NAM
        .target(name: "APSSPMediationNAM",
                dependencies: [
                    "APSSPSDK",
                    .product(name: "GFPSDK", package: "nam-sdk-ios"),
                ],
                path: "Sources/MediationNAM"),

        // MARK: - AdFit
        .target(name: "APSSPMediationAdFit",
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
        .target(name: "APSSPMediationMezzo",
                dependencies: [
                    "APSSPSDK",
                    "LibADPlus",
                    "OMSDK_Cjnet",
                ],
                path: "Sources/MediationMezzo"),
    ]
)
