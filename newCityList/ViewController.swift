//
//  ViewController.swift
//  newCityList
//
//  Created by ewac on 22/10/2016.
//  Copyright © 2016 Ewa Czekalska. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, DataEnteredDelegate {

    // receiving city list
    var theCityList: [City] = []
     var city : City = City()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.reloadData()

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.theCityList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        //create a variable that will count number of cells
        //counts how many times city appears in the list

        city = theCityList[indexPath.row]
        cell.textLabel?.text = city.name
        return cell
    }

    func userDiDEnterInformation(city: City) {
      //we display information we got from our VC
        theCityList.append(city)
        self.tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showAddCityVC")
        {
            let secondViewController : AddCityViewController = segue.destination as! AddCityViewController
            secondViewController.delegate = self
        }
        if (segue.identifier == "VC3")
        {
            let thirdViewController : DetailedCityViewController = segue.destination as! DetailedCityViewController
            let indexPath = self.tableView.indexPathForSelectedRow!
            city = theCityList[indexPath.row]
            thirdViewController.city.name = city.name
            thirdViewController.city.rating = city.rating
        }
    }
}

