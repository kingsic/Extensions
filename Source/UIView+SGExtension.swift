//
//  UIView+SGExtension.swift
//  SGExtensions
//
//  Created by kingsic on 2020/8/19.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension UIView {
    ///
    /// Loading view from Nib
    ///
    /// Nibname doesn't need to be passed, If empty, the caller's own name
    ///
    /// - parameter nibName: Nib View name, can be empty
    ///
    /// - returns: View loaded from Nib
    ///
    class func sg_loadFromNib(_ nibName: String? = nil) -> UIView {
        let name = nibName == nil ? "\(self)" : nibName!
        return Bundle.main.loadNibNamed(name, owner: nil, options: nil)?.first as! UIView
    }
    
    ///
    /// Gets the controller where the current view is located
    ///
    /// - returns: The controller where the current view is located
    ///
    func sg_getController() -> UIViewController? {
        var nextResponder: UIResponder? = self.next
        repeat {
            nextResponder = nextResponder?.next
            if let viewController = nextResponder as? UIViewController {
                return viewController
            }
        } while nextResponder != nil
        return nil
    }
    
    /// Add view to window
    func sg_addToKeyWindow() {
        UIApplication.shared.windows.first?.addSubview(self)
    }
    
    /// Remove all subviews on the view
    func sg_removeAllSubviews() {
        for tempSubviews in self.subviews {
            print(tempSubviews);
            tempSubviews.removeFromSuperview()
        }
    }
    ///
    /// Removes the subview with the specified class name on the view
    ///
    /// - parameter aClass: Remove the specified class
    ///
    func sg_removeAllSubviewsIsMember(of aClass: AnyClass) {
        for tempSubView in self.subviews {
            if tempSubView.isMember(of: aClass) {
                tempSubView.removeFromSuperview()
            }
        }
    }
    
    ///
    /// Add Corner
    ///
    /// Use the layer to add corner to the view
    ///
    /// - parameter radius: Corner size
    ///
    func sg_addCorner(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
    ///
    /// Add Corner
    ///
    /// Use UIBezierPath and CAShapeLayer to add corner to the view
    ///
    /// - parameter radius: Corner size
    /// - parameter direction: Corner direction
    ///
    func sg_addCorner(radius: CGFloat, direction: UIRectCorner) {
        let bezierPath = UIBezierPath.init(roundedRect: self.bounds, byRoundingCorners: direction, cornerRadii: CGSize.init(width: radius, height: radius))
        let shapeLayer = CAShapeLayer.init()
        shapeLayer.frame = self.bounds
        shapeLayer.path = bezierPath.cgPath
        self.layer.mask = shapeLayer
    }
    ///
    /// Add border width and border color
    ///
    /// Use layer to add border width and border color
    ///
    /// - parameter width: Border width
    /// - parameter color: Border color
    ///
    func sg_addLayerBorder(width: CGFloat, color: UIColor) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    ///
    /// Add a shadow to the view
    ///
    /// - parameter color: ShadowColor
    /// - parameter offset: ShadowOffset
    /// - parameter radius: ShadowRadius
    ///
    func sg_addShadow(color: UIColor, offset: CGSize, radius: CGFloat) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
        self.layer.shadowOpacity = 1
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
    
    
}
