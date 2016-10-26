//
//  DetailedCityViewController.swift
//  newCityList
//
//  Created by ewac on 23/10/2016.
//  Copyright © 2016 Ewa Czekalska. All rights reserved.
//

import UIKit

class DetailedCityViewController: UIViewController {
    
    @IBOutlet var ratingLabel: UILabel!
    
    @IBOutlet var cityNameLabel: UILabel!
    
    var city : City = City()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ratingLabel.text = city.rating
        cityNameLabel.text = city.name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
