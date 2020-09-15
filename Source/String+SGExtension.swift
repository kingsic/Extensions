//
//  String+SGExtension.swift
//  SGExtensions
//
//  Created by kingsic on 2020/9/11.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension String {
    ///
    /// Calculate the width of the string according to the font size
    ///
    /// - parameter font: UIFont
    ///
    /// - returns: The width of the calculated string
    ///
    func sg_calculateWidth(font: UIFont) -> CGFloat {
        let attrs = [NSAttributedString.Key.font: font]
        let tempRect = (self as NSString).boundingRect(with: CGSize(width: 0, height: 0), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: attrs, context: nil)
        return tempRect.size.width
    }
    ///
    /// Calculates the height of a string based on width and font size
    ///
    /// - parameter width: CGFloat
    /// - parameter font: UIFont
    ///
    /// - returns: The height of the calculated string
    ///
    func sg_calculateHeight(width: CGFloat, font: UIFont) -> CGFloat {
        let attrs = [NSAttributedString.Key.font: font]
        let tempRect = (self as NSString).boundingRect(with: CGSize(width: width, height: 0), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: attrs, context: nil)
        return tempRect.size.height
    }
    
    ///
    /// Sets the spacing between the text above and below
    ///
    /// - parameter space: text spacing
    ///
    func sg_setText(space: CGFloat) -> NSMutableAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = space
        let attributes = [NSAttributedString.Key.paragraphStyle: paragraphStyle]
        let attributedString = NSMutableAttributedString(string: self, attributes: attributes)
        return attributedString
    }
    
    ///
    /// Set location specific text color
    ///
    /// - parameter color: Specific text color
    /// - parameter range: Specific text location
    ///
    func sg_setText(color: UIColor, range: NSRange) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        let attributes = [NSAttributedString.Key.foregroundColor: color]
        attributedString.addAttributes(attributes, range: range)
        return attributedString
    }
    ///
    /// Set location specific text font
    ///
    /// - parameter font: Specific text font
    /// - parameter range: Specific text location
    ///
    func sg_setText(font: UIFont, range: NSRange) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        let attributes = [NSAttributedString.Key.font: font]
        attributedString.addAttributes(attributes, range: range)
        return attributedString
    }
    ///
    /// Set text color and size for specific location
    ///
    /// - parameter color: Specific text color
    /// - parameter font: Specific text font
    /// - parameter range: Specific text location
    ///
    func sg_setText(color: UIColor, font: UIFont, range: NSRange) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        let attributes = [NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.font: font]
        attributedString.addAttributes(attributes, range: range)
        return attributedString
    }
    
    
}
