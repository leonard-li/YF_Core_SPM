// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_Core",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_Core",
            targets: ["YF_Core_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Utils_SPM.git", 
            from: "1.3.1"
    )
    ],
    targets: [
        .target(
            name: "YF_Core_Target",
            dependencies: [
                "YF_Core_Binary",
                .product(name: "YF_Utils", package: "YF_Utils_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_Core_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/core/1.7.5/YFCore.xcframework.zip",
            checksum: "e0fd32eaddf5963176c4ed138c37459deba2c15d06a25421c98b60bb56a2c006"
        )
    ]
)
