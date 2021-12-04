//
//  UIView+SGFrame.swift
//  Extensions
//
//  Created by kingsic on 2021/12/3.
//  Copyright © 2021 kingsic. All rights reserved.
//

import UIKit

extension UIView {
    /// set or get frame.origin.x
    var sg_x: CGFloat {
        set(newValue) {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
        
        get {
            return self.frame.origin.x
        }
    }
    
    /// set or get frame.origin.y
    var sg_y: CGFloat {
        set(newValue) {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
        
        get {
            return self.frame.origin.y
        }
    }
    
    /// set or get frame.size.width
    var sg_width: CGFloat {
        set(newValue) {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
        
        get {
            return self.frame.size.width
        }
    }
    
    /// set or get frame.size.height
    var sg_height: CGFloat {
        set(newValue) {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
        
        get {
            return self.frame.size.height
        }
    }
    
    /// set or get center.x
    var sg_centerX: CGFloat {
        set(newValue) {
            var center = self.center
            center.x = newValue
            self.center = center
        }
        
        get {
            return self.center.x
        }
    }
    
    /// set or get center.y
    var sg_centerY: CGFloat {
        set(newValue) {
            var center = self.center
            center.y = newValue
            self.center = center
        }
        
        get {
            return self.center.y
        }
    }

    /// set or get frame.origin
    var sg_origin: CGPoint {
        set(newValue) {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
        
        get {
            return self.frame.origin
        }
    }

    /// set or get frame.size
    var sg_size: CGSize {
        set(newValue) {
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
        
        get {
            return self.frame.size
        }
    }
    
    
    /// get frame.minX
    var sg_minX: CGFloat {
        get {
            return self.frame.minX
        }
    }
    /// get frame.minY
    var sg_minY: CGFloat {
        get {
            return self.frame.minY
        }
    }
    /// get frame.midX
    var sg_midX: CGFloat {
        get {
            return self.frame.midX
        }
    }
    /// get frame.midY
    var sg_midY: CGFloat {
        get {
            return self.frame.midY
        }
    }
    /// get frame.maxX
    var sg_maxX: CGFloat {
        get {
            return self.frame.maxX
        }
    }
    /// get frame.maxY
    var sg_maxY: CGFloat {
        get {
            return self.frame.maxY
        }
    }
    
}
