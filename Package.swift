// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let checksum = "a6837e8d10f7a941c4bf2e9808cada87c8591b62db14f8055e36aff460af0489"
let version = "zyna-ffi-26.05.13-txnid-external-sqlite.1"
let url = "https://github.com/markovsdima/matrix-rust-sdk/releases/download/\(version)/MatrixSDKFFI.xcframework.zip"
let package = Package(
    name: "MatrixRustSDK",
    platforms: [
        .iOS(.v16),
        .macOS(.v12)
    ],
    products: [
        .library(name: "MatrixRustSDK", targets: ["MatrixRustSDK"]),
    ],
    targets: [
        .binaryTarget(name: "MatrixSDKFFI", url: url, checksum: checksum),
        .target(name: "MatrixRustSDK", dependencies: [.target(name: "MatrixSDKFFI")])
    ]
)
