import UIKit

class CategoryCell: UICollectionViewCell {
    static let identifier = String(describing: CategoryCell.self)
    
    @IBOutlet weak var categoryView: UIView!
    
    @IBOutlet weak var CategoryTitleLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(category: MealCategory) {
        categoryView.layer.cornerRadius = 25
        categoryView.backgroundColor = .lightGray
        CategoryTitleLbl.text = category.name
    }

}
