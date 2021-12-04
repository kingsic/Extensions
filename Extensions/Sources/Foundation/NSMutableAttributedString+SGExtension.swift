//
//  NSMutableAttributedString+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2020/9/25.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension SG where Base == NSMutableAttributedString {
    /// Set NSMutableAttributedString firstLineHeadIndent
    ///
    /// - parameter spacing: firstLineHeadIndent
    ///
    /// - returns: NSMutableAttributedString
    func firstLineHeadIndent(_ spacing: CGFloat) -> NSMutableAttributedString {
        let paraStyle = NSMutableParagraphStyle()
        paraStyle.firstLineHeadIndent = spacing
        base.addAttribute(NSAttributedString.Key.paragraphStyle, value: paraStyle, range: NSMakeRange(0, base.string.count))
        return base
    }

    /// Set NSMutableAttributedString line spacing
    ///
    /// - parameter spacing: LineSpacing
    ///
    /// - returns: NSMutableAttributedString
    func lineSpacing(_ spacing: CGFloat) -> NSMutableAttributedString {
        let paraStyle = NSMutableParagraphStyle()
        paraStyle.lineSpacing = spacing
        base.addAttribute(NSAttributedString.Key.paragraphStyle, value: paraStyle, range: NSMakeRange(0, base.string.count))
        return base
    }

    /// Sets the size of the string at the specified location
    ///
    /// - parameter range: String at the specified location
    /// - parameter font: The string size of the specified location
    ///
    /// - returns: NSMutableAttributedString
    func rangeFont(_ range: NSRange, _ font: UIFont) -> NSMutableAttributedString {
        base.addAttribute(NSAttributedString.Key.font, value: font, range: range)
        return base
    }

    /// Sets the color of the string at the specified location
    ///
    /// - parameter range: String at the specified location
    /// - parameter color: The string color of the specified location
    ///
    /// - returns: NSMutableAttributedString
    func rangeColor(_ range: NSRange, _ color: UIColor) -> NSMutableAttributedString {
        base.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        return base
    }

    /// Sets the color and size of the string at the specified location
    ///
    /// - parameter range: String at the specified location
    /// - parameter color: The string color of the specified location
    /// - parameter font: The string size of the specified location
    ///
    /// - returns: NSMutableAttributedString
    func rangeColorFont(_ range: NSRange, _ color: UIColor, _ font: UIFont) -> NSMutableAttributedString {
        let attrs = [NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.font: font]
        base.addAttributes(attrs, range: range)
        return base
    }

    /// Set the underline style and color for a specific location
    ///
    /// - parameter range: String at the specified location
    /// - parameter style: Underline style
    /// - parameter color: Underline color
    ///
    /// - returns: NSMutableAttributedString
    func underline(_ range: NSRange, _ style: NSUnderlineStyle, _ color: UIColor) -> NSMutableAttributedString {
        let attrs = [NSAttributedString.Key.strikethroughStyle: NSNumber(value: style.rawValue), NSAttributedString.Key.strikethroughColor: color] as [NSAttributedString.Key : Any]
        base.addAttributes(attrs, range: range)
        return base
    }
    
    
}
