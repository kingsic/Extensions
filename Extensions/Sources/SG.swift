//
//  SG.swift
//  SGExtensions
//
//  Created by kingsic on 2021/1/5.
//  Copyright © 2021 kingsic. All rights reserved.
//

import UIKit

public struct SG<Base> {
    public let base: Base
    public init(_ base: Base){
        self.base = base
    }
}

public protocol SGProtocol {}
public extension SGProtocol {
    var sg: SG<Self> {
        get { return SG(self) }
    }
    static var sg: SG<Self>.Type {
        get { return SG<Self>.self }
    }
}

extension UIBarButtonItem: SGProtocol {}
extension UIColor: SGProtocol {}
extension UIImage: SGProtocol {}
extension UIView: SGProtocol {}
extension UIViewController: SGProtocol {}
extension String: SGProtocol {}
extension NSAttributedString: SGProtocol {}
