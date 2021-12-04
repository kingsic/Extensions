//
//  UIViewController+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2020/8/25.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension SG where Base: UIViewController {
    /// Set navigation bar title color and size
    ///
    /// - parameter color: Title color
    /// - parameter font: Title font
    func setNavigationBarTitle(color: UIColor, font: UIFont) {
        let dict = [NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.font: font]
        base.navigationController?.navigationBar.titleTextAttributes = dict
    }
    
    /// Return to the specified controller
    ///
    /// - parameter aClass: Specifies the controller class
    /// - parameter animated: Returns whether animation is required, default is true
    func popToViewController(aClass: AnyClass, animated: Bool = true) {
        for vc in (base.navigationController?.viewControllers)! {
            if vc.isKind(of: aClass) {
                base.navigationController?.popToViewController(vc, animated: animated)
            }
        }
    }
    
    
}
