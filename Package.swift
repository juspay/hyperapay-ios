// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HyperAPay",
    platforms: [
        .iOS(.v12)
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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.5.4/HyperAPay.zip",
            checksum: "5b08e4427a41acec54328e8e13c881c958a0a0fd7f1803709bf0f17182dc5f58"
        ),
        .binaryTarget(
            name: "AmazonPayHardenediOSSDK",
            path: "./AmazonPayHardenediOSSDK.xcframework"
        )
    ]
)