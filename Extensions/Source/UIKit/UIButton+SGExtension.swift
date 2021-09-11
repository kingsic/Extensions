//
//  UIButton+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2020/8/26.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

enum SGImageLocation {
    case left, right, top, bottom
}

extension UIButton {
    ///
    /// Time interval of continuous button click
    ///
    /// - parameter time: Interval time
    ///
    /// - note: Used in the click event method of a button
    ///
    func sg_timeInterval(time: TimeInterval) {
        self.isUserInteractionEnabled = false
        DispatchQueue.main.asyncAfter(deadline: .now() + time) {
            self.isUserInteractionEnabled = true
        }
    }
    
    ///
    /// Set image location
    ///
    /// Image and title must be set before this method will work, It is recommended to set it inside the block
    ///
    /// - parameter location: location of image relative to title
    /// - parameter space: space between image and title
    /// - parameter completion: set image and title
    ///
    func sg_setImage(location: SGImageLocation, space: CGFloat, completion: (UIButton) -> ()) {
        completion(self)
        sg_setImage(location: location, space: space)
    }
    ///
    /// Set image location
    ///
    /// Image and title must be set before this method will work
    ///
    /// - parameter location: Location of image relative to title
    /// - parameter space: Space between image and title
    ///
    func sg_setImage(location: SGImageLocation, space: CGFloat) {
        
        let imageView_Width = self.imageView?.frame.size.width
        let imageView_Height = self.imageView?.frame.size.height
        let titleLabel_iCSWidth = self.titleLabel?.intrinsicContentSize.width
        let titleLabel_iCSHeight = self.titleLabel?.intrinsicContentSize.height
        
        switch location {
        case .left:
            if self.contentHorizontalAlignment == .left {
                self.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: space, bottom: 0, right: 0)
            } else if self.contentHorizontalAlignment == .right {
                self.imageEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: space)
            } else {
                let spacing_half = 0.5 * space;
                self.imageEdgeInsets = UIEdgeInsets.init(top: 0, left: -spacing_half, bottom: 0, right: spacing_half)
                self.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: spacing_half, bottom: 0, right: -spacing_half)
            }
        case .right:
            let titleLabelWidth = self.titleLabel?.frame.size.width
            if self.contentHorizontalAlignment == .left {
                self.imageEdgeInsets = UIEdgeInsets.init(top: 0, left: titleLabelWidth! + space, bottom: 0, right: 0)
                self.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: -imageView_Width!, bottom: 0, right: 0)
            } else if self.contentHorizontalAlignment == .right {
                self.imageEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: -titleLabelWidth!)
                self.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: imageView_Width! + space)
            } else {
                let imageOffset = titleLabelWidth! + 0.5 * space
                let titleOffset = imageView_Width! + 0.5 * space
                self.imageEdgeInsets = UIEdgeInsets.init(top: 0, left: imageOffset, bottom: 0, right: -imageOffset)
                self.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: -titleOffset, bottom: 0, right: titleOffset)
            }
        case .top:
            self.imageEdgeInsets = UIEdgeInsets.init(top: -(titleLabel_iCSHeight! + space), left: 0, bottom: 0, right: -titleLabel_iCSWidth!)
            self.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: -imageView_Width!, bottom: -(imageView_Height! + space), right: 0)
        case .bottom:
            self.imageEdgeInsets = UIEdgeInsets.init(top: titleLabel_iCSHeight! + space, left: 0, bottom: 0, right: -titleLabel_iCSWidth!)
            self.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: -imageView_Width!, bottom: imageView_Height! + space, right: 0)
        }
    }
    
    ///
    /// Send SMS verification code
    ///
    /// The countdown time is in seconds
    ///
    /// - parameter second: Count down time
    /// - parameter front: Text before number
    /// - parameter behind: Text after number
    /// - parameter end: Button title after completion
    /// - parameter completion: Completed Block
    ///
    func sg_sendSMSVerification(second: Int, front: String, behind: String, end: String, completion: (() -> ())?) {
        var tempSecond = second
        
        let queue = DispatchQueue.global()
        let timer = DispatchSource.makeTimerSource(flags: [], queue: queue)
        timer.schedule(deadline: .now(), repeating: .seconds(1))
        timer.setEventHandler {
            if tempSecond <= 1 {
                timer.cancel()
                DispatchQueue.main.async {
                    self.isEnabled = true
                    self.setTitle("\(end)", for: .normal)
                    if completion != nil {
                        completion!()
                    }
                }
            } else {
                tempSecond -= 1;
                DispatchQueue.main.async {
                    self.isEnabled = false
                    self.setTitle("\(front)\(tempSecond)\(behind)", for: .normal)
                }
            }
        }
        timer.resume()
    }
    
    
}
