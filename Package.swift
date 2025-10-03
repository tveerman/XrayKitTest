// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "XrayKit",
  platforms: [.iOS(.v16), .macOS(.v14), .macCatalyst(.v16), .tvOS(.v17), .visionOS(.v1)],
  products: [
    .library(
        name: "XrayKit",
        targets: ["XrayKit"]
    )
  ],
  targets: [
    .target(
        name: "XrayKit",
        dependencies: ["LibXrayGo"]
    ),
    .binaryTarget(
        name: "LibXrayGo",
        url: "https://github.com/tveerman/XrayKitTest/releases/download/1.0.10/LibXrayGo.xcframework.zip",
        checksum: "f2f408c312a2381028651330f7789ff44105c1501f13b01ae18e878967b1a79a"
    )
  ]
)
