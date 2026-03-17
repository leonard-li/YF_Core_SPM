// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_Core",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "YF_Core",
            targets: ["YF_Core"]
        ),
    ],
    dependencies: [
        .package(
	    url: "https://github.com/leonard-li/YF_Utils_SPM.git", 
	    exact: "1.2.7"
	)
    ],
    targets: [
        .binaryTarget(
            name: "YF_Core",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/core/1.7.1/YFCore.xcframework.zip",
            checksum: "cf8cecde371e499390e6f7a8236707f8ca0aa7dc4b5540329d217b5b4565e6c2"
        )
    ]
)