//
//  ViewController.swift
//  anastasiaIndexedTableView
//
//  Created by Anastasia Athans-Stothoff on 6/1/20.
//  Copyright © 2020 Anastasia Athans-Stothoff. All rights reserved.
//

// This is an example of an indexed table view. Mine will be organized around my foriegn money locations.

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
 //Create an array of A's Foreign Cash Locations
    let cashLocales = [["Australia/Oceania", "Australia", "Fiji"],["North America", "Bahamas", "Canada", "Costa Rica", "Mexico"],["South America" , "Argentina", "Venezuala"],["Asia", "China", "Japan", "Saudia Arabia", "Thailand"], ["Europe", "Belgium", "Bermuda", "Euro", "France", "Germany", "Greece", "Italy", "Netherlands", "Spain", "Switzerland", "Swiss Confederate", "United Kingdom"]]
    let indexArray = ["🏝 Australia/Oceania", "🗽 North America", "☕️ South America", "🍣 Asia" , "🗿 Europe"]
    
//Create a constant called cellID and assign it to "cellID"
 let cellID = "cellID"
    
 //Control click on the center of the view and drag to just below cellID and release. Create an outlet called foreignCashLocations.
    
    @IBOutlet weak var foreignCashLocations: UITableView!
    
    
    
 //Modify the viewDidLoad function to set foreignCashLocations to the datasource and the delegate as well as some parameters for the index.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        foreignCashLocations.dataSource = self
        foreignCashLocations.delegate = self
        foreignCashLocations.sectionIndexColor = UIColor.white
        foreignCashLocations.sectionIndexBackgroundColor = UIColor.gray
        foreignCashLocations.sectionIndexTrackingBackgroundColor = UIColor.darkGray
    
    }
    // 13. Enter the function below—it's purpose is to define the number of sections that will be needed based on how many types of elements are in the array.
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return cashLocales[section].count - 1}
        
        
       // 14. Add the function below, it's purpose is to load all of the data from the array into the table view.
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
            
            if (cell == nil) {
                cell = UITableViewCell( style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
                
            }
            
            cell?.textLabel?.text = cashLocales[indexPath.section][indexPath.row + 1]
            
            return cell!
            }
            
        // 15. Add the function below–it's purpose is to count the number of sections that will be needed based on how many types of elements are in the array
    
        func numberOfSections(in tableView: UITableView) -> Int {
            return cashLocales.count
    }
    
    // 16. Add the function below, it's purpose is to display a header for each of sections that will be needed based on how many types of elements are in the array.

        
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? { return cashLocales[section][0]
        }
    
    // 17. Add the function below, it's purpose is to display an index based on the number of sections that will be needed based on how many types of elements are in the array.

        func sectionIndexTitles(for tableView: UITableView) -> [String]? {return indexArray
            
        }
        
        
    }
        
        
        
        
    




