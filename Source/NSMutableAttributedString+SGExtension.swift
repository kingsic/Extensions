//
//  NSMutableAttributedString+SGExtension.swift
//  SGExtensions
//
//  Created by kingsic on 2020/9/25.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension NSMutableAttributedString {
    ///
    /// Set NSMutableAttributedString line spacing
    ///
    /// - parameter spacing: LineSpacing
    ///
    /// - returns: NSMutableAttributedString
    ///
    func sg_lineSpacing(_ spacing: CGFloat) -> NSMutableAttributedString {
        let paraStyle = NSMutableParagraphStyle()
        paraStyle.lineSpacing = spacing
        addAttribute(NSAttributedString.Key.paragraphStyle, value: paraStyle, range: NSMakeRange(0, string.count))
        return self
    }
    ///
    /// Sets the size of the string at the specified location
    ///
    /// - parameter range: String at the specified location
    /// - parameter font: The string size of the specified location
    ///
    /// - returns: NSMutableAttributedString
    ///
    func sg_rangeFont(_ range: NSRange, _ font: UIFont) -> NSMutableAttributedString {
        addAttribute(NSAttributedString.Key.font, value: font, range: range)
        return self
    }
    ///
    /// Sets the color of the string at the specified location
    ///
    /// - parameter range: String at the specified location
    /// - parameter color: The string color of the specified location
    ///
    /// - returns: NSMutableAttributedString
    ///
    func sg_rangeColor(_ range: NSRange, _ color: UIColor) -> NSMutableAttributedString {
        addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        return self
    }
    ///
    /// Sets the color and size of the string at the specified location
    ///
    /// - parameter range: String at the specified location
    /// - parameter color: The string color of the specified location
    /// - parameter font: The string size of the specified location
    ///
    /// - returns: NSMutableAttributedString
    ///
    func sg_rangeColorFont(_ range: NSRange, _ color: UIColor, _ font: UIFont) -> NSMutableAttributedString {
        let attrs = [NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.font: font]
        addAttributes(attrs, range: range)
        return self
    }
    ///
    /// Set the underline style and color for a specific location
    ///
    /// - parameter range: String at the specified location
    /// - parameter style: Underline style
    /// - parameter color: Underline color
    ///
    /// - returns: NSMutableAttributedString
    ///
    func sg_underline(_ range: NSRange, _ style: NSUnderlineStyle, _ color: UIColor) -> NSMutableAttributedString {
        let attrs = [NSAttributedString.Key.strikethroughStyle: NSNumber(value: style.rawValue), NSAttributedString.Key.strikethroughColor: color] as [NSAttributedString.Key : Any]
        addAttributes(attrs, range: range)
        return self
    }
    
    
}
