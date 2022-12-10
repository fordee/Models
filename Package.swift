// swift-tools-version:5.5
import PackageDescription

let package = Package(
  name: "models",
  platforms: [
    .macOS(.v12),
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "Models",
      targets: ["Models"]
    )
  ],
  dependencies: [
    //.package(url: "https://github.com/mongodb/swift-bson", .upToNextMajor(from: "3.1.0")),
    .package(url: "https://github.com/mongodb/mongo-swift-driver", .upToNextMajor(from: "1.3.0"))
  ],
  targets: [
    .target(
      name: "Models",
      dependencies: [
      //  .product(name: "SwiftBSON", package: "swift-bson"),
        .product(name: "MongoSwift", package: "mongo-swift-driver")
      ]
    )
  ]
)
