//
//  UITextField+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2020/9/22.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension SG where Base: UITextField {
    /// The placeholder color and font size of UITextField
    ///
    /// - parameter color: Placeholder color，default is drawn 70% gray
    ///
    /// - parameter font: Placeholder font，default is use system font 17 pt
    func placeholder(color: UIColor, font: UIFont = .systemFont(ofSize: 17)) {
        guard let tempPlaceholder = base.placeholder else { return }
        let attributes = [
            NSAttributedString.Key.foregroundColor: color,
            NSAttributedString.Key.font: font
        ]
        let attributedString = NSAttributedString(string: tempPlaceholder, attributes: attributes)
        base.attributedPlaceholder = attributedString
    }
    
    
}
