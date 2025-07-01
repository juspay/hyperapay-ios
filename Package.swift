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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.4/HyperAPay.zip",
            checksum: "667913b75b12290aa20e848f6c2a83cea5109ac84986e57d0d350d01def7c5f2"
        ),
        .binaryTarget(
            name: "AmazonPayHardenediOSSDK",
            path: "./AmazonPayHardenediOSSDK.xcframework"
        )
    ]
)