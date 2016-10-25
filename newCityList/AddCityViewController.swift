//
//  AddCityViewController.swift
//  newCityList
//
//  Created by ewac on 23/10/2016.
//  Copyright © 2016 Ewa Czekalska. All rights reserved.
//

import UIKit

protocol DataEnteredDelegate {
    
    func userDiDEnterInformation(city: City)

}


class AddCityViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var pickerView: UIPickerView!
    var ratingTypes = ["0", "1", "2","3","4","5"]
    var car : String = String()
    var delegate : DataEnteredDelegate? = nil
    
    @IBOutlet var cityLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self //so its able to control it
        pickerView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButton(_ sender: AnyObject) {
        
        self.dismiss(animated: true, completion: nil)
    }

    
    @IBAction func newSaveButton(_ sender: AnyObject) {
        if (delegate != nil) {
            if (cityLabel.text != nil) {
                
                var newCity  : City = City()
                newCity.name = cityLabel.text!
                newCity.rating = car
                delegate?.userDiDEnterInformation(city: newCity)
                 self.dismiss(animated: true, completion: nil)
    }
        }
        }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ratingTypes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return ratingTypes.count
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
         car = ratingTypes[row]
        //newRatingAdded =
        // newRatingAdded = row + 1
    }

}
