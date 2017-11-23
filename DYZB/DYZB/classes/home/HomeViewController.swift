//
//  HomeViewController.swift
//  DYZB
//
//  Created by 曹鹏 on 2017/11/22.
//  Copyright © 2017年 曹鹏. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view.
        
        setupUI()
      
    }

  
}
// MARK 设置主界面UI
extension HomeViewController{
    private func setupUI(){
        //1. 设置导航栏
        setNavigationBar()
    }
    
    private func setNavigationBar(){
        //设置左侧logo
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        //设置右侧按钮
        
        let size = CGSize(width:40 , height:40)
        
        
        
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highLightImageName: "Image_scan_click", size: size)
        
        
        let searchItem = UIBarButtonItem(imageName: "btn_search", highLightImageName: "btn_search_clicked", size: size)
        
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highLightImageName: "Image_my_history_click", size: size)
        
        
        
        navigationItem.rightBarButtonItems = [historyItem,qrcodeItem,searchItem]
        
    }
}
