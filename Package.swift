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
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/core/1.7.7/YFCore.xcframework.zip",
            checksum: "0c2afcb20482360a1af7b547a0d70858772d4a25622335a3b7a8c494d2a671ad"
        )
    ]
)
