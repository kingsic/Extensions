//
//  UIColor+SGExtension.swift
//  SGExtensions
//
//  Created by kingsic on 2020/9/9.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension UIColor {
    /// Random color
    class var sg_randomColor: UIColor {
        get {
            let red = CGFloat(arc4random()%256)/255.0
            let green = CGFloat(arc4random()%256)/255.0
            let blue = CGFloat(arc4random()%256)/255.0
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
    
    ///
    /// Conversion of hexadecimal encoding to RGB format
    ///
    /// - parameter hexString: Hexadecimal code
    /// - parameter alpha: CGFloat, default is 1.0
    ///
    /// - returns: Hexadecimal coded color
    ///
    class func sg_color(hexString: String, alpha: CGFloat = 1.0) -> UIColor {
        let tempHexString = hexString.replacingOccurrences(of: "#", with: "")
        let scanner = Scanner(string: tempHexString)
        var color: UInt64 = 0
        scanner.scanHexInt64(&color)
         
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
         
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    
}
