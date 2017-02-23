//
//  MyCollectionViewCell.swift
//  CollectionDemo
//
//  Created by Zin_戦 on 17/2/23.
//  Copyright © 2017年 Zin_戦. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
   
    var title : UILabel?
    var image : UILabel?
    let SCREEN = UIScreen.main.bounds
    
    override init(frame:CGRect){
        super.init(frame: frame)
        
        //将title注册到单元格
//        title = UILabel(frame:CGRect(x:0,y:0,width:SCREEN.width,height:40))
        title = UILabel()
        title?.textColor = UIColor.blue
        title?.textAlignment = NSTextAlignment.center
        self.addSubview(title!)
        title?.backgroundColor = UIColor.darkGray
        
        image = UILabel()
//        image = UILabel(frame:CGRect(x:0,y:40,width:SCREEN.width,height:30))
        image?.backgroundColor = UIColor.green
        self.addSubview(image!)
        image?.textAlignment = NSTextAlignment.center
        image?.text = "这是第二个控件"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    required init(coder aDecoder:NSCoder) {
//        fatalError("cell初始化失败")
//    }
    
}
