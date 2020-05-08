//
//  UIView+Ex.swift
//  Crop
//
//  Created by xiu on 2020/5/8.
//  Copyright © 2020 xiu. All rights reserved.
//

import UIKit

extension UIView {
    func setupWidth(_ width: CGFloat) {
        var frame = self.frame
        frame.size.width = width
        self.frame = frame
    }
}
