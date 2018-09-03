//
//  Product.swift
//  coder-swag
//
//  Created by МакЛарен on 31.08.2018.
//  Copyright © 2018 Asset Ryskul. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
