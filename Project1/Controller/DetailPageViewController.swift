//
//  DetailPageViewController.swift
//  Project1
//
//  Created by Rakshit Singh on 23/07/22.
//

import UIKit

class DetailPageViewController: UIViewController {
    
    var productId: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Loaded the Details Page's View Controller")
        print("The index of the table row selected is \(productId)")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
