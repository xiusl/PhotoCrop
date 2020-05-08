//
//  OneViewController.swift
//  Crop
//
//  Created by xiu on 2020/5/8.
//  Copyright © 2020 xiu. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    let btn = UIButton(type: .contactAdd)
        btn.center = CGPoint(x:100, y: 100)
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(add), for: .touchUpInside)
    }
    
    @objc
    func add() {
        print("hhhhhhhahahahah")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
