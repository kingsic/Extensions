//
//  UITextField+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2020/9/22.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension UITextField {
    ///
    /// Set the placeholder color of UITextField
    ///
    /// - parameter color: Placeholder color
    ///
    func sg_setPlaceholder(color: UIColor) {
        guard let tempPlaceholder = self.placeholder else { return }
        let attributes = [NSAttributedString.Key.foregroundColor: color]
        let attributedString = NSAttributedString(string: tempPlaceholder, attributes: attributes)
        self.attributedPlaceholder = attributedString
    }
    
    
}
