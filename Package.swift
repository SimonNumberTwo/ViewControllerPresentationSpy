// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "ViewControllerPresentationSpy",
    platforms: [
      .iOS(.v12),
      .tvOS(.v12)
    ],
    products: [
        .library(name: "ViewControllerPresentationSpy", targets: ["ViewControllerPresentationSpy"])
    ],
    dependencies: [],
    targets: [
        .target(
           name: "ViewControllerPresentationSpy-ObjC",
           dependencies: [],
           path: "Source/ViewControllerPresentationSpy/Objc",
           exclude: ["Source/ViewControllerPresentationSpy/Swift"],
           cSettings: [
              .headerSearchPath("Source/ViewControllerPresentationSpy/Objc")
           ]
        ),
        .target(
           name: "ViewControllerPresentationSpy",
           dependencies: ["ViewControllerPresentationSpy-ObjC"],
           path: "Source/ViewControllerPresentationSpy/Swift"
        )
    ]
)
