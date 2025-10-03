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
	url: "https://github.com/tveerman/XrayKitTest/releases/download/1.0.7/LibXrayGo.xcframework.zip",
	checksum: "529da3eca1542270e65282807eb0bbe0edf50f42980fe4b3844d6daa8a34196b"
    )
  ]
)
