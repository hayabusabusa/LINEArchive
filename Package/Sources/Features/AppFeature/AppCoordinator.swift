//
//  AppCoordinator.swift
//  
//
//  Created by Shunya Yamada on 2023/06/17.
//

import OnboardingFeature
import UIKit

/// アプリの起動経路を管理する Coordinator.
public final class AppCoordinator {
    private let window: UIWindow
    private let launchType: LaunchType

    public init(window: UIWindow,
                launchType: LaunchType) {
        self.window = window
        self.launchType = launchType
    }

    public func start() {
        defer {
            window.makeKeyAndVisible()
        }

        switch launchType {
        case .normal:
            window.rootViewController = OnboardingViewController()
        case .openURL(let url):
            print(url)
            window.rootViewController = UIViewController()
        }
    }
}

public extension AppCoordinator {
    /// アプリの起動パターン.
    enum LaunchType {
        /// `scene(_:willConnectTo:options:)` 経由でそのまま起動されるパターン.
        case normal
        /// URL を受け取って起動されるパターン.
        case openURL(URL)
    }
}
