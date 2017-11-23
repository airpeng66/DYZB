//
//  UIButtonItem-Extension.swift
//  DYZB
//
//  Created by 曹鹏 on 2017/11/22.
//  Copyright © 2017年 曹鹏. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    /*class func createItem(imageName: String, highetImageName: String, size: CGSize ) -> UIBarButtonItem {
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highetImageName), for: .highlighted)
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        let btnItem = UIBarButtonItem (customView:btn)
        return btnItem
        
    }*/

convenience init(imageName : String , highLightImageName : String = "", size  : CGSize = CGSize.zero){
    let btn = UIButton()
    if highLightImageName != "" {
         btn.setImage(UIImage(named: highLightImageName), for: .highlighted)
    }
    btn.setImage(UIImage(named: imageName), for: .normal)
    if size == CGSize.zero{
        btn.sizeToFit()
    }else{
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
    }
    
    self.init (customView:btn)
}
}
