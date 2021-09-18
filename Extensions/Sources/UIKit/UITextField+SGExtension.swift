//
//  UITextField+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2020/9/22.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension SG where Base: UITextField {
    ///
    /// Set the placeholder color of UITextField
    ///
    /// - parameter color: Placeholder color
    ///
    func setPlaceholder(color: UIColor) {
        guard let tempPlaceholder = base.placeholder else { return }
        let attributes = [NSAttributedString.Key.foregroundColor: color]
        let attributedString = NSAttributedString(string: tempPlaceholder, attributes: attributes)
        base.attributedPlaceholder = attributedString
    }
    
    
}
