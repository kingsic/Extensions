//
//  NextViewController.swift
//  Extensions
//
//  Created by kingsic on 2021/9/14.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        
        let space: CGFloat = 20
        let btn_width: CGFloat = view.frame.size.width - 2 * space
        
        let btn = UIButton()
        btn.frame = CGRect.init(x: space, y: 100, width: btn_width, height: 50)
        btn.backgroundColor = UIColor.orange
        btn.sg.addCorner(radius: 10, direction: [.topLeft, .bottomLeft])
        btn.setTitle("获取验证码", for: .normal)
        btn.addTarget(self, action: #selector(btn_action(_:)), for: .touchUpInside)
        view.addSubview(btn)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    deinit {
        print("deinit")
    }

}

extension NextViewController {
    // item
    @objc func btn_action(_ btn: UIButton) {        print("leftBarButtonItem_action")
        btn.sg.sendSMSVerification(second: 30, front: "剩余", behind: "秒", end: "重新获取验证码") {
            
        }
    
    }
}
