//
//  UIReuseCell+SGExtension.swift
//  Extensions
//
//  Created by kingsic on 2021/9/29.
//  Copyright © 2021 kingsic. All rights reserved.
//

import UIKit

extension UITableView {
    /// Nib Cell 注册
    func registerNib(_ aClass: UITableViewCell.Type) {
        register(aClass, reuseIdentifier: String(describing: aClass))
    }
    /// Nib Cell 注册
    func registerNib(_ aClass: UITableViewCell.Type, reuseIdentifier: String) {
        let nibName = String(describing: aClass)
        let nib = UINib(nibName: nibName, bundle: nil)
        register(nib, forCellReuseIdentifier: reuseIdentifier)
    }
    
    /// 纯代码 Cell 注册
    func register(_ aClass: UITableViewCell.Type) {
        register(aClass, reuseIdentifier: String(describing: aClass))
    }
    /// 纯代码 Cell 注册
    func register(_ aClass: UITableViewCell.Type, reuseIdentifier: String) {
        register(aClass, forCellReuseIdentifier: reuseIdentifier)
    }
    
}


extension UICollectionView {
    /// Nib Cell 注册
    func registerNib(_ cellClass: UICollectionViewCell.Type) {
        registerNib(cellClass, reuseIdentifier: String(describing: cellClass))
    }
    /// Nib Cell 注册
    func registerNib(_ cellClass: UICollectionViewCell.Type, reuseIdentifier: String) {
        let nibName = String(describing: cellClass)
        let nib = UINib(nibName: nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    /// 纯代码 Cell 注册
    func register(_ cellClass: UICollectionViewCell.Type) {
        register(cellClass, reuseIdentifier: String(describing: cellClass))
    }
    /// 纯代码 Cell 注册
    func register(_ cellClass: UICollectionViewCell.Type, reuseIdentifier: String) {
        register(cellClass, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
}
