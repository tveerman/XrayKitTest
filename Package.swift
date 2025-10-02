// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "XrayKit",
  platforms: [.iOS(.v16), .macOS(.v14), .macCatalyst(.v16), .tvOS(.v17), .visionOS(.v1)],
  products: [
    .library(
        name: "XrayKit",
        targets: ["XrayCore"]
    )
  ],
  targets: [
    .target(
        name: "XrayCore",
        dependencies: ["XrayCoreLib"]
    ),
    .binaryTarget(
        name: "XrayCoreLib",
	url: "https://github.com/tveerman/XrayKitTest/releases/download/1.0.6/XrayCore.xcframework.zip",
	checksum: "701c45d57237fe8d0aa366975a75fa6de7b319c690e6daeab60f8f4697da1486"
    )
  ]
)
