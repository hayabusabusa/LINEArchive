//
//  Injectable.swift
//  
//
//  Created by Shunya Yamada on 2023/06/17.
//

import Foundation

public protocol Injectable {
    associatedtype Dependency = Void
    func inject(_ dependency: Dependency)
}

public extension Injectable where Dependency == Void {
    func inject(_ dependency: Dependency) {}
}
