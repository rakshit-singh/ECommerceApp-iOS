//
//  DetailPageViewController.swift
//  Project1
//
//  Created by Rakshit Singh on 23/07/22.
//

import UIKit

class DetailPageViewController: UIViewController {
    
    var productId: Int?
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UITextField!
    @IBOutlet weak var productDescription: UITextField!
    
    var products: ProductDatabase? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productDescription.delegate = self
        productName.delegate = self
        
        print("Loaded the Details Page's View Controller")
        print("The index of the table row selected is \(productId!)")
        
        let currProduct = products?.getProduct(productId!)
        
        // Filling in the data obtained from the model in the view
        productImage.image = currProduct?.image
        productName.text = currProduct?.name
        productDescription.text = currProduct?.description
        
    }

    
}

extension DetailPageViewController: UITextFieldDelegate{
    
    func textFieldDidEndEditing(_ textField: UITextField) {

        switch textField{
        case productName:
            if (productName!.text! != products!.getProduct(self.productId!).name){
                print("The old product is \(products!.productArr[productId!])")
                print("Editing the product name field now!!!!")
                products!.productArr[productId!].name = productName.text!
                print("The changed text is \(productName.text!)")
                print(products!.productArr[productId!])
            }
        default:
            if (productDescription.text != products!.getProduct(productId!).description){
                products!.productArr[productId!].description = productDescription.description
            }
        }
    }
    
    //makes the keyboard go away whne the user presses the return/enter key on the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
