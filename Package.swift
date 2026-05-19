// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_Core",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "YF_Core",
            targets: ["YF_Core_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Utils_SPM.git", 
            .from("1.2.9")
    )
    ],
    targets: [
        .target(
        name: "YF_Core_Target",
        dependencies: [
            "YF_Core_Binary",
            .product(name: "YF_Utils", package: "YF_Utils")
        ]
        ),
        .binaryTarget(
            name: "YF_Core_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/core/1.7.2/YFCore.xcframework.zip",
            checksum: "5736d0dee9b8eef3d044d6b368aefcd4db92114df5d0deab7323f2ce16a45b26"
        )
    ]
)
