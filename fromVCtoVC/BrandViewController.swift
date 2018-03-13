//
//  BrandViewController.swift
//  fromVCtoVC
//
//  Created by Vladimir Zhirov on 4/1/17.
//  Copyright © 2017 Vladimir Zhirov. All rights reserved.
//

import UIKit

class BrandViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
            
    
    @IBOutlet weak var brandTableView: UITableView!
    
    
    
            var brands = [String]()
            
            override func viewDidLoad() {
                super.viewDidLoad()
                
                            brandTableView.delegate = self   // WORKS w/o it
                            brandTableView.dataSource = self
                
                brands = ["Audi","BMW","Nissan","Porshe","Tesla"]
                
                // Uncomment the following line to preserve selection between presentations
                // self.clearsSelectionOnViewWillAppear = false
                
                // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
                // self.navigationItem.rightBarButtonItem = self.editButtonItem()
            }
            
            
            // MARK: - Table view data source
            
            func numberOfSections(in tableView: UITableView) -> Int {
                // #warning Incomplete implementation, return the number of sections
                return 1
            }
            
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                // #warning Incomplete implementation, return the number of rows
                return brands.count
            }
            
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "brandCell", for: indexPath)
                
                //        let cell = tableView.dequeueReusableCell(withIdentifier: "brandCell")
                
                cell.textLabel?.text = brands[indexPath.row]
                
                
                
                
                return cell
            }
    
    var valueToPass:String!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.row)!")
        
        
        // Get Cell Label
        let indexPath = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRow(at: indexPath)! as UITableViewCell
        
        let brandToPass = currentCell.textLabel?.text
        
    //    brandToPass = (currentCell.textLabel?.text)!    // it works w & w/o this line
      
        print(brandToPass!) //it gave me Optional
        
           self.navigationController?.popViewController(animated: true)  // doesn't go back w/o it , but in  BrandVC goes
        
                                           //     dataLabel.text = yearToPass
    //    performSegue(withIdentifier: "returnBrand", sender: self)
    }
            
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
