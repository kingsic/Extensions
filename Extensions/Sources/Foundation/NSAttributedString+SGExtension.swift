//
//  NSAttributedString2.swift
//  Test
//
//  Created by kingsic on 2021/9/27.
//

import UIKit
import Foundation

extension NSAttributedString {
    /// Plain text
    ///
    /// - parameter text: Text
    ///
    /// - parameter color: Color，default is black
    ///
    /// - parameter font: Font，default is use system font 17 pt
    class func nomal(_ text: String, _ color: UIColor = .black, _ font: UIFont = .systemFont(ofSize: 17)) -> NSAttributedString {
        return NSAttributedString(string: text, attributes: [
            .foregroundColor: color,
            .font: font
        ])
    }
    
    /// Jump link text
    ///
    /// - parameter text: Text
    ///
    /// - parameter url: Link URL
    ///
    /// - parameter color: Color，default is black
    ///
    /// - parameter font: Font，default is use system font 17 pt
    class func link(_ text: String, _ url: URL, _ color: UIColor = .black, _ font: UIFont = .systemFont(ofSize: 17)) -> NSAttributedString {
        return NSAttributedString(string: text, attributes: [
            .foregroundColor: color,
            .font: font,
            .link: url
        ])
    }
}
