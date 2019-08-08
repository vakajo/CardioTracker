//
//  SmokingViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 06/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit


class SmokingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // Outlets
    @IBOutlet weak var ViewContainer: UIView!
    @IBOutlet weak var imgViewHeart: UIImageView!
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    
    @IBOutlet weak var imgViewCircle: UIImageView!
    @IBOutlet weak var lblQuestions: UILabel!
    
    @IBOutlet weak var lblSmoking: UILabel!
    @IBOutlet weak var pickerViewSmoking: UIPickerView!
    @IBOutlet weak var btnNext: UIButton!
    
    @IBOutlet weak var viewSepTop: UIView!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var viewSepBottom: UIView!
    
    
    
    // Declare array for Picker View
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Connect data to picker View
        pickerViewSmoking.delegate = self
        pickerViewSmoking.dataSource = self
        
        // Input picker data to the array
        pickerData = ["Non-Smoker", "Ex-Smoker", "Light Smoker (Under 10 pr day)", "Moderate Smoker (10-19 pr day)", "Heavy Smoker (Over 20 pr day)"]
        
        //MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        
        lblSmoking.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        
        lblDesc
            .textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        
        
        //MARK: Buttons layout
        btnNext.layer.cornerRadius = 15
        btnNext.clipsToBounds = true
        btnNext.layer.borderWidth = 1
        btnNext.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
        btnNext.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
       
    }
    
    //MARK: PickerView Methods
    
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component that is being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    // Set font of PickerView
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let label = UILabel()
        label.font = UIFont(name: "San Fransisco Display", size: 1.0)
        label.text = pickerData[row]
        label.textAlignment = .center
        return label
    }
    
    // Set value of ethnicity
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // Set smokingStatus to selection
        // smokingStatus = dataSource[row]
    }
    
    
    //MARK: Button Methods
    func buttonTapped(sender: UIButton) {
        sender.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
        sender.setTitleColor(.white, for: [])
    }
    
    @IBAction func btnNextSelected(_ sender: UIButton) {
        buttonTapped(sender: btnNext)
    }
    
}