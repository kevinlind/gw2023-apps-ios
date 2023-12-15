// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Scrumdinger",
    platforms: [
        .iOS(.v16), .tvOS(.v16)
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-collections.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Scrumdinger",
            dependencies: [
                 .product(name: "Collections", package: "swift-collections")
            ],
            path: "Scrumdinger"),
    ],
    swiftLanguageVersions: [.version("5")]
)

