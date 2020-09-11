//
//  UIImage+SGExtension.swift
//  SGExtensions
//
//  Created by kingsic on 2020/9/11.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension UIImage {
    ///
    /// Circle UIImage
    ///
    /// - returns : The height of the calculated string
    ///
    func sg_circleImage() -> UIImage {
        UIGraphicsBeginImageContext(self.size)
        let context = UIGraphicsGetCurrentContext()
        let rect = CGRect.init(x: 0, y: 0, width: self.size.width, height: self.size.height)
        context?.addEllipse(in: rect)
        context?.clip()
        self.draw(in: rect)
        let newimage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newimage!
    }
    ///
    /// Circle UIImage
    ///
    /// - parameter named: The name of the image
    ///
    /// - returns : Circle Image
    ///
    class func SG_circleImage(named: String) -> UIImage {
        return (self.init(named: named)?.sg_circleImage())!
    }
}
