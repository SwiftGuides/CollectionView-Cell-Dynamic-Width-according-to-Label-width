//
//  demoCollectionViewCell.swift
//  collectionViewFlowLayoutDemo
//
//  Created by MacMini on 9/17/19.
//  Copyright © 2019 Immanent. All rights reserved.
//

import UIKit

class demoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var menuImages: UIImageView!
    @IBOutlet weak var menuNames: UILabel!
    
    
//    override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
//        <#code#>
//    }
    
    override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
        return contentView.systemLayoutSizeFitting(CGSize(width: self.bounds.size.width, height: 1))
    }
}
