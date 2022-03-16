//
//  MealsCell.swift
//  FetchRewardProdject
//
//  Created by Alandis Seals on 3/16/22.
//

import UIKit

class MealsCell: UICollectionViewCell {
        static var identifier = String(describing: MealsCell.self)
        
        @IBOutlet weak var mealTitleLbl: UILabel!
        @IBOutlet weak var mealImageView: UIImageView!
        
        
   
        func setup(meal: Meal) {
            mealTitleLbl.text = meal.name
            mealImageView.image = meal.image
        }

    }


