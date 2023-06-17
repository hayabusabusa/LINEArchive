//
//  AppCoordinator.swift
//  
//
//  Created by Shunya Yamada on 2023/06/17.
//

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
        window.rootViewController = UIViewController()

        switch launchType {
        case .normal:
            return
        case .openURL(let url):
            print(url)
            return
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
