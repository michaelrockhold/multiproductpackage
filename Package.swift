// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "multiproductpackage",
    
    platforms: [.macOS(.v12)],

    
    products: [
        .library(name: "libby", targets: ["libby"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0"),
    ],

    targets: [
        
        .target(name: "libby"),
        
        .testTarget(name: "libbyTests", dependencies: ["libby"]),
            
        .executableTarget(name: "tooly",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                "libby",
            ]
        ),

        .executableTarget(name: "appy",
            dependencies: [
                "libby",
            ]
        ),
    ]
)

