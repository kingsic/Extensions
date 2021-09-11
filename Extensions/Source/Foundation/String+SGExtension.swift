//
//  String+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2020/9/11.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension String {
    /// 获取某一个下标的字符串
    ///
    /// string[index] 例如："0123456789"[2]，输出：2
    subscript(i: Int) -> String {
        let startIndex = self.index(self.startIndex, offsetBy: i)
        let endIndex = self.index(startIndex, offsetBy: 1)
        return String(self[startIndex..<endIndex])
    }
    
    /// 获取下标值在[n]到[m]位之间的字符串
    ///
    /// string[index..<index] 例如："0123456789"[2..<6]，输出：2345
    subscript(r: Range<Int>) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
            let endIndex = self.index(self.startIndex, offsetBy: r.upperBound)
            return String(self[startIndex..<endIndex])
        }
    }
    
    /// 获取下标值为[n]长度为[m]的字符串
    ///
    /// string[index, length] 例如："0123456789"[2, 6]，输出：234567
    subscript(index: Int, length: Int) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: index)
            let endIndex = self.index(startIndex, offsetBy: length)
            return String(self[startIndex..<endIndex])
        }
    }
    
    /// 截取：从0位到[i]位的字符
    func substring(to: Int) -> String{
        return self[0..<to]
    }
    /// 截取：从[i]位到末尾的字符
    func substring(from: Int) -> String{
        return self[from..<self.count]
    }
}


extension String {
    ///
    /// Calculate the width of the string according to the font size
    ///
    /// - parameter font: UIFont
    ///
    /// - returns: The width of the calculated string
    ///
    func sg_calculateStringWidth(font: UIFont) -> CGFloat {
        let attrs = [NSAttributedString.Key.font: font]
        let tempRect = (self as NSString).boundingRect(with: CGSize(width: 0, height: 0), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: attrs, context: nil)
        return tempRect.size.width
    }
    ///
    /// Calculate the height of a string based on width and font size
    ///
    /// - parameter width: CGFloat
    /// - parameter font: UIFont
    ///
    /// - returns: The height of the calculated string
    ///
    func sg_calculateStringHeight(width: CGFloat, font: UIFont) -> CGFloat {
        let attrs = [NSAttributedString.Key.font: font]
        let tempRect = (self as NSString).boundingRect(with: CGSize(width: width, height: 0), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: attrs, context: nil)
        return tempRect.size.height
    }
}
