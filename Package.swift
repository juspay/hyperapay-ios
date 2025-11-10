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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.4.16/HyperAPay.zip",
            checksum: "14bce0f5b06a316f4ac9fe62bc7607021bdeb26555dc1e0d68b005e551dae97d"
        ),
        .binaryTarget(
            name: "AmazonPayHardenediOSSDK",
            path: "./AmazonPayHardenediOSSDK.xcframework"
        )
    ]
)