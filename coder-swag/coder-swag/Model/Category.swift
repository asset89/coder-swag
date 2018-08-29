//
//  Category.swift
//  coder-swag
//
//  Created by МакЛарен on 29.08.2018.
//  Copyright © 2018 Asset Ryskul. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
