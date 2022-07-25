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
    
    
    @IBOutlet weak var productDescription: UITextView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var products: ProductDatabase? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productDescription.delegate = self
        productName.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillAppear), name: UIResponder.keyboardWillShowNotification, object:nil)

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisappear), name: UIResponder.keyboardWillHideNotification, object:nil)
        
        
        let currProduct = products?.getProduct(productId!)
        
        // Filling in the data obtained from the model in the view
        productImage.image = currProduct?.image
        productName.text = currProduct?.name
        productDescription.text = currProduct?.description
        
    }
    
    @objc func keyboardWillAppear(){
        self.scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+250)
    }
    
    @objc func keyboardWillDisappear(){
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height-250)
    }
    
}

extension DetailPageViewController: UITextFieldDelegate, UITextViewDelegate{
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        
        if let text = textField.text{
            if (text != products!.getProduct(productId!).name){
                products!.productArr[productId!].name = text
            }
        }
    }
    
    //makes the keyboard go away whne the user presses the return/enter key on the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        
        if let text = textView.text{
            if (text != products!.getProduct(productId!).description){
                products!.productArr[productId!].description = textView.text
            }
        }
        textView.resignFirstResponder()
    }
}
