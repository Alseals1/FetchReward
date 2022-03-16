import UIKit

class MealDetailsViewController: UIViewController {
    @IBOutlet weak var mealLbl: UILabel!
    @IBOutlet weak var mealImageView: UIImageView!
    @IBOutlet weak var mealDetailLbl: UILabel!
    
    var meals: Meal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateMeals()
    }
    
    private func populateMeals() {
        mealLbl.text = meals.name
        mealImageView.image = meals.image
    }
}
