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
    
    var messages = [
        "This is the 1st product",
        "This is the second product",
        "This is the third product"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "CustomProductCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
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
        }
    }


}

//When the table view loads up it will request data from this data source
extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    //This method will return a UITableViewCell that it should display in each and every row of our tableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! CustomProductCell
        cell.productLabel.text = messages[indexPath.row]
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
