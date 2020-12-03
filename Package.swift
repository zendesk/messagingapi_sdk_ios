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
                 url: "https://github.com/zendesk/sdkconfigurations_sdk_ios/releases/download/1.1.7/SDKConfigurations.xcframework.zip",
                 from: "1.1.7")
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskMessagingAPISDK",
            url: "https://github.com/zendesk/messagingapi_sdk_ios/releases/download/3.8.1/MessagingAPI.xcframework.zip",
            checksum: "1a65f5c485310c474afc29968155359f815bddf08347def66fbf012edde28090"
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
