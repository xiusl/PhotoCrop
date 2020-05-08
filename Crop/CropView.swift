//
//  CropView.swift
//  Crop
//
//  Created by xiu on 2020/5/8.
//  Copyright © 2020 xiu. All rights reserved.
//
// https://github.com/Yummypets/YPImagePicker

import UIKit
let ww: CGFloat = UIScreen.main.bounds.size.width
let hh: CGFloat = UIScreen.main.bounds.size.height

class CropView: UIView {

    let imageView = UIImageView()
    let cropArea = UIView()
    

    
    convenience init(image: UIImage, ratio: Double) {
        self.init(frame: CGRect(x: 0, y: 0, width: ww, height: hh))
        addSubview(imageView)
//        addSubview(cropArea)
        imageView.image = image
        setupLayout(with: image, ratio: ratio)
        applyStyle()
    }

    private func setupLayout(with image: UIImage, ratio: Double) {
        
        let r: CGFloat = CGFloat(1.0 / ratio)
        
        
        let imageRatio: Double = Double(image.size.width / image.size.height)
        
        let w = self.frame.size.width * r
        cropArea.bounds = CGRect(x: 0, y: 0, width: w, height: w)
        cropArea.center = self.center
        
        if ratio > imageRatio {
            let scaledDownRatio = UIScreen.main.bounds.width / image.size.width
            imageView.frame.size.width = image.size.width * scaledDownRatio
            
        } else if ratio < imageRatio {
            imageView.frame.size.height = w
        } else {
            imageView.frame.size = cropArea.frame.size
        }
       
        imageView.frame.size.width = imageView.frame.size.height * CGFloat(imageRatio)
         imageView.center = self.center
    }
    
    private func applyStyle() {
        clipsToBounds = true
        
        imageView.isUserInteractionEnabled = true
        imageView.isMultipleTouchEnabled = true
        
        cropArea.backgroundColor = .clear
        cropArea.isUserInteractionEnabled = false
    }
}
