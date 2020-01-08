//
//  ViewController.swift
//  LabTest
//
//  Created by MacStudent on 2020-01-08.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
  
    @IBOutlet weak var namebox: UITextField!
    @IBOutlet weak var yearBox: UITextField!
    // defining the property name to hold string values displayed by table view
    var names: [String] = []
    
    @IBAction func saveItem(_ sender: Any) {
    }
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addItem(_ sender: Any)
    {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // gives a title to the navigation bar
        title = "Car List"
        //register the UITableViewCell class with the table view.
        tableView?.register(UITableViewCell.self,forCellReuseIdentifier: "Cell")

}
}

extension ViewController: UITableViewDataSource {
    
    //return number of rows in a table
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
   {
    return names.count
    
    }

    //dequeues table view cells and populates them with the corresponding string from the names array.
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
-> UITableViewCell
   {
let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",
for: indexPath)
    cell.textLabel?.text = names[indexPath.row]
return cell
    
    }
}
