//
//  ViewController.swift
//  Extensions
//
//  Created by kingsic on 2021/9/9.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Test code
        navigationItem.leftBarButtonItem = UIBarButtonItem.sg.barButtonItem(target: self, action: #selector(leftBarButtonItem_action), text: "item", textColor: .red, textFont: .systemFont(ofSize: 15))
        self.sg.setNavigationBarTitle(color: .sg.randomColor, font: .systemFont(ofSize: 20))
        
        // Test code
        addSubViews()
    }
    
    
    func addSubViews() {
        let space: CGFloat = 20
        let btn_width: CGFloat = 0.5 * (view.frame.size.width - 3 * space)
        
        let leftBtn = UIButton()
        leftBtn.frame = CGRect.init(x: space, y: 100, width: btn_width, height: 50)
        leftBtn.backgroundColor = UIColor.orange
        leftBtn.sg.addCorner(radius: 10, direction: [.topLeft, .bottomLeft])
        leftBtn.sg.setImage(location: .left, space: 10) { (btn) in
            btn.setTitle("next vc", for: .normal)
            btn.setImage(UIImage.init(named: "test_img"), for: .normal)
        }
        leftBtn.addTarget(self, action: #selector(leftBtn_action(_:)), for: .touchUpInside)
        view.addSubview(leftBtn)

        let rightBtn = UIButton()
        rightBtn.frame = CGRect.init(x: 2 * space + btn_width, y: leftBtn.frame.minY, width: btn_width, height: 50)
        rightBtn.backgroundColor = .sg.randomColor
        rightBtn.sg.setImage(location: .right, space: 10) { (btn) in
            btn.setTitle("right btn", for: .normal)
            btn.setImage(UIImage.init(named: "test_img"), for: .normal)
        }
        rightBtn.sg.addCorner(radius: 10, direction: [.topRight, .bottomRight])
        rightBtn.addTarget(self, action: #selector(rightBtn_action(_:)), for: .touchUpInside)
        view.addSubview(rightBtn)
        
        let lab = UILabel()
        lab.frame = CGRect(x: space, y: leftBtn.frame.maxY + space, width: view.frame.size.width - 2 * space, height: 50)
        lab.backgroundColor = .sg.randomColor
        lab.sg.addCorner(radius: 10)
        lab.textColor = .white
        lab.textAlignment = .center
        view.addSubview(lab)
        lab.attributedText = NSMutableAttributedString(string: "曾经沧海难为水，除却巫山不是云").sg.rangeFont(NSMakeRange(0, 2), .boldSystemFont(ofSize: 22)).sg.rangeColorFont(NSMakeRange(12, 3), .lightGray, .systemFont(ofSize: 13)).sg.underline(NSMakeRange(12, 3), .single, .lightGray)

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
        print("This btn parent controller is \(String(describing: btn.sg.getController()))")
        navigationController?.pushViewController(NextViewController(), animated: true)
    }
    @objc func rightBtn_action(_ btn: UIButton) {
        print("twoBtn_action(_:)")

    }
}
