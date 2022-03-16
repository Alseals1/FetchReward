import UIKit

class CategoryCell: UICollectionViewCell {
    static let identifier = String(describing: CategoryCell.self)
    
    @IBOutlet weak var categoryImageView: UIImageView!
    
    @IBOutlet weak var CategoryTitleLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(category: MealCategory) {
        CategoryTitleLbl.text = category.name
        categoryImageView.image = category.image
    }

}
