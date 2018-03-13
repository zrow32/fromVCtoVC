//
//  YearViewController.swift
//  fromVCtoVC
//
//  Created by Vladimir Zhirov on 3/31/17.
//  Copyright © 2017 Vladimir Zhirov. All rights reserved.
//

import UIKit

//protocol DestinationViewControllerDelegate {
//    func doSomethingWithData(data: Data)
//}


class YearViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{ // DestinationViewControllerDelegate {
 //   internal func doSomethingWithData(data: Data) {
    

    
//    var delegate: DestinationViewControllerDelegate?
//    
//    func passDataBackwards(){
//    
//        let data = Data()
//        delegate?.doSomethingWithData(data: yearToPass)
//        print("passing data to mainVC")
//        
//    }
//    }
    


   
    @IBOutlet weak var yearTableView: UITableView!
    
    //        var selectedYear: String = "Anonymous"
    //        weak var delegate: TableViewController!
    
    var years = [String]()
    var yearToPass = String ()  // workd w/o it
    
//    var yearToVC = String()
    
 //   var valueToPass = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yearTableView.delegate = self   // WORKS w/o it
        yearTableView.dataSource = self
        
        years = ["2012","2013","2014","2015","2016"]
      
        //     var dataLabel = MainTableViewCell()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    // MARK: - Table view data source
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }                  number of sections = 1  By defaul
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return years.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "yearCell", for: indexPath)
        
        //        let cell = tableView.dequeueReusableCell(withIdentifier: "2Cell")
        
        cell.textLabel?.text = years[indexPath.row]
        
        
        return cell
    }
    
  
    
  //  var valueToPass:String!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.row)!")
        
        
        // Get Cell Label
        let indexPath = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRow(at: indexPath)! as UITableViewCell
        
        let yearToPass = currentCell.textLabel?.text!
        
                                                      //   yearToPass = (currentCell.textLabel?.text)!
        print(yearToPass!) //it gave me Optional
        print("ok/")
       //     dataLabel.text = yearToPass
  //      performSegue(withIdentifier: "returnYear", sender: self )  //  sender originally was just 'self' also works with  Any?.self  WHY?
                                                         // Сomment 'performSegue'  if use UNWIND SEGUE
    
        self.navigationController?.popViewController(animated: true)  // doesn't go back w/o it , but in  BrandVC goes
    
    }
    
    
    
    
 //   if segueI
    
//    if segue.identifier == "unwindToViewController1" {
//    
//    let nbaRotoHome = segue.destination as! NBARotoHome
//    
//    nbaRotoHome.player = "new player name"
//    }
    
    
//    ////////////////////////////////////   THIS FUNK doesn't spoil but no PRINT "CALLED"
 
    func prepare( for segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "returnYear" {
            
           let yearToVC = segue.destination as! ViewController
    
            
        yearToVC.yearReceived =  yearToPass
            
              print("called")
            
        }
    }
    //years[IndexPath.row] // = yearToPass - from REDDIT
    
    
    
//    func dispatch_async(dispatch_get_main_queue()){
//    
//        self.performSegue(withIdentifier:"returnYear", sender: self)
//    
//    }
//
//    func performSegue(withIdentifier identifier: "returnYear", sender: Any?) {
//      //   self.navigationController?.popViewController(animated: true)
//    }
    
    
    
    
//
//    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
//     //   if segue.identifier = "returnYear" {   // just tried to put identifier from another func
//        if segue.source is YearViewController {
//         //   dataLabel.text = sourceViewController.yearToPass
//            print("it works")
//        }
//    }
    
  /////////////////////////////////////
    
    
    
    // Rewrite didSelect__________________________________
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  //      print("You selected cell #\(indexPath.row)!")
    //    
//       let year = years[indexPath.row]
    //   let
    
    
   
    
    
//    if segue.identifier == "chosenPerson" { //  This is for CollectionView
//    
//    let chosenPerson = segue.destination as! chosenPersonViewController
//    
//    if let indexPath = collectionView.indexPathForSelectedItem {
//    
//    chosenPerson!.userID = self.usersArray[indexPath.row].userId //May it found nil please re - check array values // M.B.USEFUL!!!!!!!!!!!
//    
//    }
//    
//    
//    
//    
//    }
//}
//    __________________________DO NOT FORGET

//    func prepare( for segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "returnYear" {
//            
//            let VC = segue.destination as! ViewController
//           VC.passedValue = yearToPass
//            print(valueToPass)
//}
//}


    
    //________________________________ANOTHER METHOD
    

    
    
    
//        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
//    
//            if (segue.identifier == "returnYear") {
//                // initialize new view controller and cast it as your view controller
//                var viewController = segue.destination as! ViewController
//                // your new view controller should have property that will store passed value
//                viewController.passedValue = yearToPass
//            }
//}


/*
 override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
 
 // Configure the cell...
 
 return cell
 }
 */

/*
 // Override to support conditional editing of the table view.
 override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
 // Return false if you do not want the specified item to be editable.
 return true
 }
 */

/*
 // Override to support editing the table view.
 override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
 if editingStyle == .delete {
 // Delete the row from the data source
 tableView.deleteRows(at: [indexPath], with: .fade)
 } else if editingStyle == .insert {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
 
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
 // Return false if you do not want the item to be re-orderable.
 return true
 }
 */

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */
    
}
