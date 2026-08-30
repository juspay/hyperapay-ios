// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HyperAPay",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "HyperAPay",
            targets: ["HyperAPay", "AmazonPayHardenediOSSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "HyperAPay",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.9.2/HyperAPay.zip",
            checksum: "5d9e61959b26cbb8cb88fa6164712462e2181441534bfc794f77dd0624de06b3"
        ),
        .binaryTarget(
            name: "AmazonPayHardenediOSSDK",
            path: "./AmazonPayHardenediOSSDK.xcframework"
        )
    ]
)