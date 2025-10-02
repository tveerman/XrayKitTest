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
        dependencies: ["Binary"]
    ),
    .binaryTarget(
        name: "Binary",
	url: "https://github.com/tveerman/XrayKitTest/releases/download/1.0.2/XrayCoreKit.xcframework.zip",
	checksum: "d5a39ad78cbb8c730153e351059e5954d65ded2a65886abb76924980b60fc789"
    )
  ]
)
