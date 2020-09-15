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
        self.sg_setNavigationBarTitle(color: .sg_randomColor, font: .systemFont(ofSize: 20))
        
        // Test code
        addSubViews()
    }
    
    func addSubViews() {
        let btn_x: CGFloat = 20
        let btn_width: CGFloat = 0.5 * (view.frame.size.width - 3 * btn_x)
        
        let btn = UIButton()
        btn.frame = CGRect.init(x: btn_x, y: 100, width: btn_width, height: 50)
        btn.backgroundColor = UIColor.orange
        btn.sg_addCorner(radius: 10, direction: [.topLeft, .bottomLeft])
        btn.sg_setImage(location: .left, space: 10) { (btn) in
            btn.setTitle("点击分享", for: .normal)
            btn.setImage(UIImage.init(named: "test_img"), for: .normal)
        }
        btn.addTarget(self, action: #selector(btn_action(_:)), for: .touchUpInside)
        view.addSubview(btn)

        let twoBtn = UIButton()
        twoBtn.frame = CGRect.init(x: 2 * btn_x + btn_width, y: btn.frame.minY, width: btn_width, height: 50)
        twoBtn.backgroundColor = .sg_randomColor
        twoBtn.sg_addCorner(radius: 10, direction: [.topRight, .bottomRight])
        twoBtn.addTarget(self, action: #selector(twoBtn_action(_:)), for: .touchUpInside)
        view.addSubview(twoBtn)
        twoBtn.setTitle("发送验证码", for: .normal)
    }
    
    // MARK: - - action
    @objc func btn_action(_ btn: UIButton) {
        print("This btn parent controller is \(String(describing: btn.sg_getController()))")
        btn.sg_timeInterval(time: 1)
    }
    @objc func twoBtn_action(_ btn: UIButton) {
        print("twoBtn_action(_:)")
        btn.sg_sendSMSVerification(second: 5, front: "剩余", behind: "秒", end: "重新发送", completion: nil)
    }
    
}
