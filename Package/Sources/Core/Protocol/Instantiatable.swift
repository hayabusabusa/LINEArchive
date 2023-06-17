//
//  Instantiatable.swift
//  
//
//  Created by Shunya Yamada on 2023/06/17.
//

import Foundation

public protocol Instantiatable: Injectable {
    init(with dependency:Dependency)
}

public extension Instantiatable {
    static func instantiate(with dependency: Dependency) -> Self {
        Self(with: dependency)
    }
}

public extension Instantiatable where Dependency == Void {
    static func instantiate() -> Self {
        Self(with: ())
    }
}
