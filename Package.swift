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
	url: "https://github.com/tveerman/XrayKitTest/releases/download/1.0.4/XrayCoreKit.xcframework.zip",
	checksum: "d66103bff2d085042883f047e01fe7b42d98ba3a829f5026823a59e389be091c"
    )
  ]
)
