//
//  ViewController.swift
//  SGExtensions
//
//  Created by kingsic on 2020/9/12.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Test code
        navigationItem.leftBarButtonItem = UIBarButtonItem.sg_barButtonItem(target: self, action: #selector(leftBarButtonItem_action), text: "item", textColor: .red, textFont: .systemFont(ofSize: 15))
        self.sg_setNavigationBarTitle(color: .sg_randomColor, font: .systemFont(ofSize: 20))
        
        // Test code
        addSubViews()
    }
    
    
    func addSubViews() {
        let space: CGFloat = 20
        let btn_width: CGFloat = 0.5 * (view.frame.size.width - 3 * space)
        
        let leftBtn = UIButton()
        leftBtn.frame = CGRect.init(x: space, y: 100, width: btn_width, height: 50)
        leftBtn.backgroundColor = UIColor.orange
        leftBtn.sg_addCorner(radius: 10, direction: [.topLeft, .bottomLeft])
        leftBtn.sg_setImage(location: .left, space: 10) { (btn) in
            btn.setTitle("left btn", for: .normal)
            btn.setImage(UIImage.init(named: "test_img"), for: .normal)
        }
        leftBtn.addTarget(self, action: #selector(leftBtn_action(_:)), for: .touchUpInside)
        view.addSubview(leftBtn)

        let rightBtn = UIButton()
        rightBtn.frame = CGRect.init(x: 2 * space + btn_width, y: leftBtn.frame.minY, width: btn_width, height: 50)
        rightBtn.backgroundColor = .sg_randomColor
        rightBtn.sg_setImage(location: .right, space: 10) { (btn) in
            btn.setTitle("right btn", for: .normal)
            btn.setImage(UIImage.init(named: "test_img"), for: .normal)
        }
        rightBtn.sg_addCorner(radius: 10, direction: [.topRight, .bottomRight])
        rightBtn.addTarget(self, action: #selector(rightBtn_action(_:)), for: .touchUpInside)
        view.addSubview(rightBtn)
        
        let lab = UILabel()
        lab.frame = CGRect(x: space, y: leftBtn.frame.maxY + space, width: view.frame.size.width - 2 * space, height: 50)
        lab.backgroundColor = .sg_randomColor
        lab.sg_addCorner(radius: 10)
        lab.textColor = .white
        lab.textAlignment = .center
        view.addSubview(lab)
        lab.attributedText = NSMutableAttributedString(string: "曾经沧海难为水，除却巫山不是云")
            .sg_rangeFont(NSMakeRange(0, 2), .boldSystemFont(ofSize: 22))
            .sg_rangeColorFont(NSMakeRange(12, 3), .lightGray, .systemFont(ofSize: 13))
            .sg_underline(NSMakeRange(12, 3), .single, .lightGray)

    }
    
    
}

// MARK: - - action
extension ViewController {
    // item
    @objc func leftBarButtonItem_action() {
        print("leftBarButtonItem_action")
    }
    
    // btn
    @objc func leftBtn_action(_ btn: UIButton) {
        print("This btn parent controller is \(String(describing: btn.sg_getController()))")
        btn.sg_timeInterval(time: 1)
    }
    @objc func rightBtn_action(_ btn: UIButton) {
        print("twoBtn_action(_:)")

    }
}
