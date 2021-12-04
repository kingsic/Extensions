//
//  UIBarButtonItem+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2020/9/22.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension SG where Base: UIBarButtonItem {
    /// Return UIBarButtonItem with text only
    ///
    /// - parameter target: Target
    /// - parameter action: Action
    /// - parameter text: Text
    /// - parameter textColor: Text color
    /// - parameter textFont: Text font size
    ///
    /// - returns: UIBarButtonItem
    static func barButtonItem(target: Any, action: Selector, text: String, textColor: UIColor, textFont: UIFont) -> UIBarButtonItem {
        let btn = UIButton(type: .custom)
        btn.setTitle(text, for: .normal)
        btn.setTitleColor(textColor, for: .normal)
        btn.titleLabel?.font = textFont
        btn.sizeToFit()
        btn.addTarget(target, action: action, for: .touchUpInside)
        return UIBarButtonItem(customView: btn)
    }
    
    /// Return UIBarButtonItem with image only
    ///
    /// - parameter target: Target
    /// - parameter action: Action
    /// - parameter imageName: Image name in normal state
    /// - parameter highImageName: Image name in highlighted state
    ///
    /// - returns: UIBarButtonItem
    static func barButtonItem(target: Any, action: Selector, imageName: String, highImageName: String) -> UIBarButtonItem {
        let btn = UIButton(type: .custom)
        btn.setBackgroundImage(UIImage(named: imageName), for: .normal)
        btn.setBackgroundImage(UIImage(named: highImageName), for: .highlighted)
        let width = btn.currentBackgroundImage?.size.width
        let height = btn.currentBackgroundImage?.size.height
        if width == nil {
            print("sg_barButtonItem function parameter imagename or highimagename cannot be empty or the name is incorrect")
        } else {
            btn.frame = CGRect.init(x: 0, y: 0, width: width!, height: height!)
        }
        btn.addTarget(target, action: action, for: .touchUpInside)
        return UIBarButtonItem(customView: btn)
    }

    
}
