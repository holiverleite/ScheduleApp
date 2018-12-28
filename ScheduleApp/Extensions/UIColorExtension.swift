//
//  UIColorExtension.swift
//  ScheduleApp
//
//  Created by Haroldo Leite on 28/12/18.
//  Copyright © 2018 Haroldo Leite. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(hex: String, alpha: CGFloat) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: alpha
        )
    }
    
    //rgb(38,50,56)
    public class var blueTranslucentCustom : UIColor {
        return UIColor(hex: "0088cc", alpha: 0.5)
    }
    
    //rgb(0,136,204)
    public class var blueCustom : UIColor {
        return UIColor(hex: "0088cc", alpha: 1)
    }
}
