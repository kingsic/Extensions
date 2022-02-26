//
//  NSMutableAttributedString+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2022/2/22.
//

import UIKit
import Foundation

extension NSMutableAttributedString {
    /// Sets the font size at the specified location
    func font(_ font: UIFont, _ range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSAttributedString.Key.font, value: font, range: range)
        return self
    }
    
    /// Sets the font color at the specified location
    func foregroundColor(_ color: UIColor, _ range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        return self
    }
    
    /// Sets the background color of the font at the specified position
    func backgroundColor(_ color: UIColor, _ range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSAttributedString.Key.backgroundColor, value: color, range: range)
        return self
    }
    
    /// Sets NSMutableParagraphStyle
    func paragraphStyle(_ style: NSMutableParagraphStyle, _ range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSAttributedString.Key.paragraphStyle, value: style, range: range)
        return self
    }
    
    /// Sets the character spacing at the specified position
    func kern(_ value: NSNumber, _ range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSAttributedString.Key.kern, value: value, range: range)
        return self
    }
    
    /// Sets the style and color of the stripthrough at the specified location
    ///
    /// - parameter style: 1-7：Single line，Bold in turn；9-15: Double line，Bold in turn
    func strikethrough(_ style: NSNumber, _ color: UIColor, _ range: NSRange) -> NSMutableAttributedString {
        self.addAttributes([
            NSAttributedString.Key.strikethroughStyle: style,
            NSAttributedString.Key.strikethroughColor: color,
        ], range: range)
        return self
    }
    
    /// Sets the style and color of the underline at the specified location
    func underline(_ style: NSNumber, _ color: UIColor, _ range: NSRange) -> NSMutableAttributedString {
        self.addAttributes([
            NSAttributedString.Key.underlineStyle: style,
            NSAttributedString.Key.underlineColor: color,
        ], range: range)
        return self
    }
    
    /// Set the URL of the jump link at the specified location
    func link(_ url: URL, _ range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSAttributedString.Key.link, value: url, range: range)
        return self
    }
    
}
