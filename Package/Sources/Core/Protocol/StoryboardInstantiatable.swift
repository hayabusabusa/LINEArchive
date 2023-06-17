//
//  StoryboardInstantiatable.swift
//  
//
//  Created by Shunya Yamada on 2023/06/17.
//

import UIKit

public protocol StoryboardInstantiatable: Instantiatable {}

public extension StoryboardInstantiatable where Self: UIViewController {
    init(with dependency: Dependency) {
        let storyboard = UIStoryboard(name: String(describing: type(of: Self.self)), bundle: Bundle(for: Self.self))
        self = storyboard.instantiateInitialViewController() as! Self
        self.inject(dependency)
    }
}
