//
//  CustomView.swift
//  img
//
//  Created by Anhdzai on 12/11/17.
//  Copyright © 2017 Anhdzai. All rights reserved.
//

import UIKit


extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        set {
            self.tag = Int(newValue)
            layer.cornerRadius = self.tag == -1 ? (frame.width / 2) : CGFloat(self.tag)
            clipsToBounds = true
            layer.borderWidth = 8.0
            layer.borderColor = UIColor.white.cgColor
        }
        get {
            return CGFloat(self.tag)
        }
    }
}
