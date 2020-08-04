//
//  MyTableViewCell.swift
//  CollectionView
//
//  Created by Bassel Saleh on 28.07.20.
//  Copyright © 2020 Bassel. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath)as!MyCollectionViewCell
        cell.configuarion(model: models[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
    
    
    
    func configure(models:[Model]){
        
        self.models=models
        collectionview.reloadData()
        
    }
  
    @IBOutlet var collectionview: UICollectionView!
    
    var models=[Model]()

    override func awakeFromNib() {
        super.awakeFromNib()
        
        let nib=UINib(nibName: "MyCollectionViewCell", bundle: nil)
        collectionview.register(nib, forCellWithReuseIdentifier: "MyCollectionViewCell")
        collectionview.delegate=self
        collectionview.dataSource=self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
