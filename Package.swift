// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "XrayKit",
  platforms: [.iOS(.v16), .macOS(.v14), .macCatalyst(.v16), .tvOS(.v17), .visionOS(.v1)],
  products: [
    .library(
        name: "XrayKit",
        targets: ["LibXray"]
    )
  ],
  targets: [
    .binaryTarget(
        name: "LibXray",
	url: "https://github.com/tveerman/XrayKitTest/releases/download/1.0.0/Libxraygo.xcframework.zip",
	checksum: "b5794831d9bcd0ab8539e9ba39e7e5c367b074ecaa6beb7c618878a385020bac"
    )
  ]
)
