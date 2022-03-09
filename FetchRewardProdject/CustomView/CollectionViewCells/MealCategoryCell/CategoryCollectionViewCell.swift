//
//  CategoryCollectionViewCell.swift
//  FetchRewardProdject
//
//  Created by Alandis Seals on 3/9/22.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var catergoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLbl: UILabel!
    
    func setup(category: DishCategory){
        
        categoryTitleLbl.text = category.name
        catergoryImageView.image = category.image
    
    }
    
}
