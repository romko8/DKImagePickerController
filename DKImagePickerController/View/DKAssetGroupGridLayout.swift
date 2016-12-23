//
//  DKAssetGroupGridLayout.swift
//  DKImagePickerControllerDemo
//
//  Created by ZhangAo on 16/1/17.
//  Copyright © 2016年 ZhangAo. All rights reserved.
//

import UIKit

open class DKAssetGroupGridLayout: UICollectionViewFlowLayout {
    
    open override func prepare() {
        super.prepare()
        let minItemWidth: CGFloat = 100
        
        let interval: CGFloat = 3
        self.minimumInteritemSpacing = interval
        self.minimumLineSpacing = interval
        
        let contentWidth = self.collectionView!.bounds.width
        
        let itemCount = Int(floor(contentWidth / minItemWidth))
        var itemWidth = (contentWidth - interval * (CGFloat(itemCount) - 1)) / CGFloat(itemCount)
        let actualInterval = (contentWidth - CGFloat(itemCount) * itemWidth) / (CGFloat(itemCount) - 1)
        itemWidth += actualInterval - interval
        
        let itemSize = CGSize(width: itemWidth, height: itemWidth)
        self.itemSize = itemSize
    }
    
}
