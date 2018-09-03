//
//  ProductVC.swift
//  coder-swag
//
//  Created by МакЛарен on 03.09.2018.
//  Copyright © 2018 Asset Ryskul. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private(set) public var products = [Product]()

    @IBOutlet weak var productCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productCollection.dataSource = self
        productCollection.delegate = self

    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        }
        
        return ProductCell()
    }

  
    

  

}
