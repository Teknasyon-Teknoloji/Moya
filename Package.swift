// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Moya",
    products: [
        .library(name: "Moya", targets: ["Moya"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "4.1.0")),
        .package(url: "https://github.com/antitypical/Result.git", .upToNextMajor(from: "3.0.0")),
    ],
    targets: [
         .target(
            name: "Moya",
            dependencies: [
                "Alamofire",
                "Result"],
            exclude: [
                "Tests",
                "Sources/Supporting Files",
                "Examples"])
    ],
    swiftLanguageVersions: [3, 4]
)
