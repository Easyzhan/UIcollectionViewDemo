//
//  ViewController.swift
//  CollectionDemo
//
//  Created by Zin_戦 on 17/2/23.
//  Copyright © 2017年 Zin_戦. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    var collectionView: UICollectionView?
    
    //加载页面
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = CustomLayout()
        collectionView = UICollectionView(frame:CGRect.init(x:0,y:0,width:UIScreen.main.bounds.width,height:self.view.bounds.height),collectionViewLayout:layout)
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.backgroundColor = UIColor.white
//        layout.itemSize = CGSize(width:UIScreen.main.bounds.width,height:70)
        self.view.addSubview(collectionView!)
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) 
//        cell.title?.text = "这里是内容\(indexPath.row)"
        //先清空内部原有的元素
        for subview in cell.subviews {
            subview.removeFromSuperview()
        }
        // 添加图片
        let img = UIImageView(image: UIImage(named: "ws"))
        img.frame = cell.bounds
        img.contentMode = .scaleAspectFit
        // 图片上面显示课程名称，居中显示
        let lbl = UILabel(frame:CGRect(x:0, y:5, width:cell.bounds.size.width, height:20))
        lbl.textAlignment = .center
        lbl.text = "ffffff"
        cell.addSubview(img)
        cell.addSubview(lbl)
        return cell
    }

}

