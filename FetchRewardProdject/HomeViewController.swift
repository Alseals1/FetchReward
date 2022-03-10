//
//  HomeViewController.swift
//  FetchRewardProdject
//
//  Created by Alandis Seals on 3/10/22.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [MealCategory] = [
        .init(id: "id1", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id1", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id1", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id1", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id1", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id1", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id1", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id1", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id1", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id1", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id1", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id1", name: "Chicken", image: UIImage(named: "chicken")!),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
registerCells()
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCell.identifier)
    }
    

    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCell.identifier, for: indexPath) as! CategoryCell
        cell.setup(category: categories[indexPath.row])
        return cell
        
    }
    
    
}

