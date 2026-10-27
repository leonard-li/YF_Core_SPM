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
            from: "1.3.0"
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
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/core/1.7.3/YFCore.xcframework.zip",
            checksum: "279664c62ad66b64037b9ac30a3c7750e50b1ce45e1e925b39dbffcd8a2c2b88"
        )
    ]
)
