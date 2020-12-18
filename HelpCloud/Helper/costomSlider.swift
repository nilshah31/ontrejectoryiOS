//
//  costomSlider.swift
//  HelpCloud
//
//  Copyright © 2020 Bluelabellabs. All rights reserved.
//

import UIKit

class costomSlider: UISlider {

    @IBInspectable var trackHeight: CGFloat = 8
    
    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(origin: bounds.origin, size: CGSize(width: bounds.width, height: trackHeight))
    }
}
