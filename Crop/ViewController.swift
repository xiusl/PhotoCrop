//
//  ViewController.swift
//  Crop
//
//  Created by xiu on 2020/5/8.
//  Copyright © 2020 xiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
    
         let btn = UIButton(type: .contactAdd)
            btn.center = CGPoint(x:50, y: 50)
            self.view.addSubview(btn)
            btn.addTarget(self, action: #selector(adddd), for: .touchUpInside)
        }
        
        @objc
        func adddd() {
            print("vbbbvvbn")
            
            guard let image = UIImage(named: "abc.jpeg") else {return}
            let vc = CropController(image: image, ratio: 1)
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        }


}

