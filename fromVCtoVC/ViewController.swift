//
//  ViewController.swift
//  fromVCtoVC
//
//  Created by Vladimir Zhirov on 4/1/17.
//  Copyright © 2017 Vladimir Zhirov. All rights reserved.
//

import UIKit

//class OriginViewController: UIViewController {
//    var model: Model?
//    
//    override func viewWillAppear(animated: Bool) {
//        // Updates the view controller interface using the updated model
//    }
//    


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource { //, DestinationViewControllerDelegate {
    
  
//    func doSomethingWithData(data: Data) {
//        dataLabel.text = data 
//    }
  
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var yearReceived: String!
    var brandReceived: String!
    
    
    var names = [String]()
    var identities = [String]()
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        names = ["Year","Brand"]
        identities = ["YearViewController","BrandViewController"]
        
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainCell") as! MainTableViewCell
        
        cell.titleLabel.text = names[indexPath.row]
        cell.dataLabel.text = "data"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        
        self.navigationController?.pushViewController(viewController!, animated: true)
    }
    
    //        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
    //
    //            if (segue.identifier == "returnYear") {
    //                // initialize new view controller and cast it as your view controller
    //                var viewController = segue.destination as! YearTableViewController
    //                // your new view controller should have property that will store passed value
    //                viewController.passedValue = yearToPass
    //            }
    
 //   @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
    
//        if let sourceViewController = segue.sourceViewController as? YearViewController {
//            
//            var dataRecieved = segue.sourceViewController.dataRecieved
        
//        print ("unwind to VC")
//    }
    
   @IBAction func myUnwindAction(_ segue: UIStoryboardSegue){
        if let yearViewController = segue.source as? YearViewController {
            yearReceived = yearViewController.yearToPass
            // Do something with the data
        //    dataLabel.text = dataReceived
            print("passed") // doesn't print
                
//        }   else if  let brandViewController = segue.source as? BrandViewController {
//            brandReceived = brandViewController.brandToPass
//            }
   }
        }
    }









