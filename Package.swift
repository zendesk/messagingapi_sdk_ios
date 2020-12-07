// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskMessagingAPISDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "ZendeskMessagingAPISDK",
            targets: [
              "ZendeskMessagingAPISDKTargets"
            ]
        )
    ],
    dependencies: [
        .package(name: "ZendeskSDKConfigurationsSDK",
                 url: "https://github.com/zendesk/sdkconfigurations_sdk_ios",
                 from: "1.1.7")
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskMessagingAPISDK",
            path: "MessagingAPI.xcframework"
        ),
        .target(name: "ZendeskMessagingAPISDKTargets",
                dependencies: [
                    .target(name: "ZendeskMessagingAPISDK"),
                    .product(name: "ZendeskSDKConfigurationsSDK", package: "ZendeskSDKConfigurationsSDK")
                ],
                path: "Sources"
        )
    ]
)
