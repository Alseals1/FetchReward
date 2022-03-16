import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var mealCollectionView: UICollectionView!
    
    var categories: [MealCategory] = [
        .init(id: "id1", name: "Chicken"),
        .init(id: "id2", name: "Seafood"),
        .init(id: "id3", name: "Beef"),
        .init(id: "id4", name: "Vegan"),
        .init(id: "id5", name: "Milkshakes"),
        .init(id: "id6", name: "Icecream"),
        .init(id: "id7", name: "Chicken")
    ]
    var meals: [Meal] = [
        .init(id: "id1", name: "Tacos", image: UIImage(named: "chicken")!),
        .init(id: "id2", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id3", name: "Chicken", image: UIImage(named: "chicken")!),
        .init(id: "id4", name: "Chicken", image: UIImage(named: "chicken")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCell.identifier)
        mealCollectionView.register(UINib(nibName: MealsCell.identifier, bundle: nil), forCellWithReuseIdentifier: MealsCell.identifier)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case mealCollectionView:
            return meals.count
        default: return 0
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCell.identifier, for: indexPath) as! CategoryCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case mealCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MealsCell.identifier, for: indexPath) as! MealsCell
            cell.setup(meal: meals[indexPath.row])
            return cell
        default: return UICollectionViewCell()
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == mealCollectionView {
            let controller = MealDetailsViewController.instantiate()
            controller.meals = collectionView == mealCollectionView ? meals[indexPath.row] : nil
            navigationController?.pushViewController(controller, animated: true)
        }
    }
}
    
    


