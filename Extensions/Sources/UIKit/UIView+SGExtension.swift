//
//  UIView+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2020/8/19.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension SG where Base: UIView {
    ///
    /// Loading view from Nib
    ///
    /// Nibname doesn't need to be passed, If empty, the caller's own name
    ///
    /// - parameter nibName: Nib View name, can be empty
    ///
    /// - returns: View loaded from Nib
    ///
    static func loadFromNib(_ nibName: String? = nil) -> UIView {
        let name = nibName == nil ? "\(self)" : nibName!
        return Bundle.main.loadNibNamed(name, owner: nil, options: nil)?.first as! UIView
    }
    
    ///
    /// Gets the controller where the current view is located
    ///
    /// - returns: The controller where the current view is located
    ///
    func getController() -> UIViewController? {
        var nextResponder: UIResponder? = base.next
        repeat {
            nextResponder = nextResponder?.next
            if let viewController = nextResponder as? UIViewController {
                return viewController
            }
        } while nextResponder != nil
        return nil
    }
    
    /// Add view to window
    func addToKeyWindow() {
        UIApplication.shared.windows.first?.addSubview(base)
    }
    
    /// Remove all subviews on the view
    func removeAllSubviews() {
        for tempSubviews in base.subviews {
            tempSubviews.removeFromSuperview()
        }
    }
    ///
    /// Removes the subview with the specified class name on the view
    ///
    /// - parameter aClass: Remove the specified class
    ///
    func removeAllSubviewsIsMember(of aClass: AnyClass) {
        for tempSubView in base.subviews {
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
    func addCorner(radius: CGFloat) {
        base.layer.cornerRadius = radius
        base.layer.masksToBounds = true
    }
    ///
    /// Add Corner
    ///
    /// Use UIBezierPath and CAShapeLayer to add corner to the view
    ///
    /// - parameter radius: Corner size
    /// - parameter direction: Corner direction
    ///
    func addCorner(radius: CGFloat, direction: UIRectCorner) {
        let bezierPath = UIBezierPath.init(roundedRect: base.bounds, byRoundingCorners: direction, cornerRadii: CGSize.init(width: radius, height: radius))
        let shapeLayer = CAShapeLayer.init()
        shapeLayer.frame = base.bounds
        shapeLayer.path = bezierPath.cgPath
        base.layer.mask = shapeLayer
    }
    ///
    /// Add border width and border color
    ///
    /// Use layer to add border width and border color
    ///
    /// - parameter width: Border width
    /// - parameter color: Border color
    ///
    func addLayerBorder(width: CGFloat, color: UIColor) {
        base.layer.borderWidth = width
        base.layer.borderColor = color.cgColor
    }
    
    ///
    /// Add a shadow to the view
    ///
    /// - parameter color: ShadowColor
    /// - parameter offset: ShadowOffset
    /// - parameter radius: ShadowRadius
    ///
    func addLayerShadow(color: UIColor, offset: CGSize, radius: CGFloat) {
        base.layer.shadowColor = color.cgColor
        base.layer.shadowOffset = offset
        base.layer.shadowRadius = radius
        base.layer.shadowOpacity = 1
        base.layer.shouldRasterize = true
        base.layer.rasterizationScale = UIScreen.main.scale
    }
    
    
}
