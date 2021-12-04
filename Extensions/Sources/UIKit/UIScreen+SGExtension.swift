//
//  UIScreen+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2021/12/1.
//  Copyright © 2021 kingsic. All rights reserved.
//

import UIKit

extension UIScreen {
    /// UIScreen size
    static var size: CGSize {
        get {
            return UIScreen.main.bounds.size
        }
    }
    
    /// UIScreen width
    static var width: CGFloat {
        get {
            return UIScreen.main.bounds.size.width
        }
    }
    
    /// UIScreen height
    static var height: CGFloat {
        get {
            return UIScreen.main.bounds.size.height
        }
    }
    
    /// StatusBar height
    static var statusBarHeight: CGFloat {
        get {
            if #available(iOS 13, *) {
                return (UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.size.height)!
            } else {
                return UIApplication.shared.statusBarFrame.size.height
            }
        }
    }
    
    /// NavigationBar height
    static var navBarHeight: CGFloat {
        get {
            return statusBarHeight + 44
        }
    }
    
    /// TabBar height
    static var tabBarHeight: CGFloat {
        get {
            return statusBarHeight == 20 ? 49 : 83
        }
    }
    
    /// Bottom safeArea height
    static var safeAreaInsetBottom: CGFloat {
        get {
            return statusBarHeight == 20 ? 0 : 34
        }
    }
    
}
