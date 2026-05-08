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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.7.4/HyperAPay.zip",
            checksum: "a3565c111e9d300e8e403704d3b1f11a082980db5c06adbda9b059fa13dbedb9"
        ),
        .binaryTarget(
            name: "AmazonPayHardenediOSSDK",
            path: "./AmazonPayHardenediOSSDK.xcframework"
        )
    ]
)