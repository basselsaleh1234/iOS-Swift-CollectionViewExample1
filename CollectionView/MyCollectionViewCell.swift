//
//  MyCollectionViewCell.swift
//  CollectionView
//
//  Created by Bassel Saleh on 28.07.20.
//  Copyright © 2020 Bassel. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet var myImageview: UIImageView!
    
    @IBOutlet var myLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func configuarion(model:Model){
        
        self.myLabel.text=model.text
        self.myImageview.image=UIImage(named:model.imageName)
    }
    
}
