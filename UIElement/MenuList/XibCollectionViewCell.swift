//
//  CollectionViewCell.swift
//  AutoLayout
//
//  Created by zed on 9/15/21.
//

import UIKit

class XibCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var viewImage: UIView!
    @IBOutlet weak var nameItem: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        shadowForViewCorner(viewName: viewImage)
    }

    
    private func shadowForViewCorner(viewName: UIView){
        viewName.layer.cornerRadius = 20
        viewName.layer.shadowOffset = CGSize(width: 10,
                                                height: 10)
        viewName.layer.shadowRadius = 5
        viewName.layer.shadowOpacity = 0.4
    }
    
}
