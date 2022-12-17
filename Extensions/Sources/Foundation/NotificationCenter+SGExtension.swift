//
//  NotificationCenter+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2022/11/29.
//  Copyright © 2022 kingsic. All rights reserved.
//

import Foundation

extension NotificationCenter {
    /// 发送通知
    class func post(_ name: String, object: Any? = nil) {
        self.default.post(name: NSNotification.Name(name), object: object)
    }
    
    /// 监听通知
    class func add(_ observer: Any, selector: Selector, name: String, object: Any? = nil) {
        self.default.addObserver(observer, selector: selector, name: NSNotification.Name(name), object: object)
    }
    
    /// 移除通知
    class func remove(_ observer: Any, name: String, object: Any? = nil) {
        self.default.removeObserver(observer, name: NSNotification.Name(name), object: object)
    }
    
    /// 移除通知
    class func remove(_ observer: Any) {
        self.default.removeObserver(observer)
    }
}
