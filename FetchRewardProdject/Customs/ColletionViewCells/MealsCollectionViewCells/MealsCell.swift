//
//  MealsCell.swift
//  FetchRewardProdject
//
//  Created by Alandis Seals on 3/16/22.
//

import UIKit

class MealsCell: UICollectionViewCell {
        static var identifier = String(describing: MealsCell.self)
        
    @IBOutlet weak var mealView: UIView!
    @IBOutlet weak var mealTitleLbl: UILabel!
        @IBOutlet weak var mealImageView: UIImageView!
        
        
   
        func setup(meal: Meal) {
            mealView.layer.cornerRadius = 10
            mealView.backgroundColor = .quaternarySystemFill
            mealTitleLbl.text = meal.name
            mealImageView.image = meal.image
        }

    }


