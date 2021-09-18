//
//  UIImage+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2020/9/11.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension SG where Base: UIImage {
    ///
    /// Circle UIImage
    ///
    /// - returns: The height of the calculated string
    ///
    func circleImage() -> UIImage {
        UIGraphicsBeginImageContext(base.size)
        let context = UIGraphicsGetCurrentContext()
        let rect = CGRect.init(x: 0, y: 0, width: base.size.width, height: base.size.height)
        context?.addEllipse(in: rect)
        context?.clip()
        base.draw(in: rect)
        let newimage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newimage!
    }
    ///
    /// Circle UIImage
    ///
    /// - parameter named: The name of the image
    ///
    /// - returns: Circle Image
    ///
    static func circleImage(named: String) -> UIImage {
        return (Base.init(named: named)?.sg.circleImage())!
    }
    
    
}
