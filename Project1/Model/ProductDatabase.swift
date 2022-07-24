//
//  ProductDatabase.swift
//  Project1
//
//  Created by Rakshit Singh on 24/07/22.
//

import Foundation
import UIKit

class ProductDatabase{
    
    var productArr: [Product] = [
        Product(image:UIImage(named: "background")!, name:"Product 1", description:"This is the 1st product"),
        Product(image:UIImage(named: "background")!, name:"Product 2", description:"This is the 2nd product"),
        Product(image:UIImage(named: "background")!, name:"Product 3", description:"This is the 3rd product")
    ]
    
    
    func getProduct(_ index: Int) -> Product{
        return self.productArr[index]
    }
    
}
