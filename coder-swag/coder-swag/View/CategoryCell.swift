//
//  CategoryCell.swift
//  coder-swag
//
//  Created by МакЛарен on 28.08.2018.
//  Copyright © 2018 Asset Ryskul. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateView(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
