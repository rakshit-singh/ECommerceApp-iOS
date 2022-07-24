//
//  ViewController.swift
//  Project1
//
//  Created by Rakshit Singh on 22/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    // This variable contains the index of the table cell that user has selected to edit
    var selectedProductIndex = -1
    @IBOutlet weak var tableView: UITableView!
    
    var products = ProductDatabase()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "CustomProductCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Inside and before the view will appear function")
        tableView.reloadData()
        super.viewWillAppear(animated)
        print(products.productArr[0])
        print("Inside and after the view will appear function")
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "goToDetailsPage" && self.selectedProductIndex != -1 {
            return true
        }
        return false
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetailsPage"{
            let detailsPageVC = segue.destination as! DetailPageViewController
            detailsPageVC.productId = self.selectedProductIndex
            detailsPageVC.products = self.products
        }
    }


}

//When the table view loads up it will request data from this data source
extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.productArr.count
    }
    
    //This method will return a UITableViewCell that it should display in each and every row of our tableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! CustomProductCell
        cell.productLabel.text = products.productArr[indexPath.row].name
        print("Inside cellForRow and value is \(products.productArr[indexPath.row].name)")
        return cell
    }
 
}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Will call the detail screen when the user clicks on/selects a cell
        self.selectedProductIndex = indexPath.row
        
        tableView.deselectRow(at: indexPath, animated: true)
//        print("Performing the push segue")
        self.performSegue(withIdentifier: "goToDetailsPage", sender: self)
//        print("Now popping the segue and returning to the table view")
        
        
    }
    
}
