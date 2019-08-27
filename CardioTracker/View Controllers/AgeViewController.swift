//
//  AgeViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 02/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class AgeViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    
    @IBOutlet weak var btnCircle: UIButton!
    @IBOutlet weak var lblQuestions: UILabel!
    
    @IBOutlet weak var lblAge: UILabel!
   
    @IBOutlet weak var datePickerAge: UIDatePicker!
    
    @IBOutlet weak var btnNext: UIButton!
    
    @IBOutlet weak var viewSepTop: UIView!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var viewSepBottom: UIView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        btnNext.isEnabled = false
        btnNext.alpha = 0.5
        
        //MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblAge.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        lblDesc
            .textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblCardio.attributedText = NSAttributedString(string: "ARDIO",attributes:[ NSAttributedString.Key.kern: 1.3])
        lblTracker.attributedText = NSAttributedString(string: "RACKER",attributes:[ NSAttributedString.Key.kern: 1.2])
        
        
        //MARK: Buttons layout
        btnNext.layer.cornerRadius = 15
        btnNext.clipsToBounds = true
        btnNext.layer.borderWidth = 1
        btnNext.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
        btnNext.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        
        btnCircle.setImage(nil, for: .normal)
        btnCircle.layer.borderColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1).cgColor
        btnCircle.layer.borderWidth = 1.0
        btnCircle.layer.cornerRadius = btnCircle.frame.size.height/2.0
        
        //Methods
        
        
    }
    
    func calculateAndStoreAge() {
        
        let dateOfBirth = datePickerAge.date
        let gregorian = Calendar(identifier: .gregorian)
        let ageComponents = gregorian.dateComponents([.year], from: dateOfBirth, to: Date())
        let age = ageComponents.year!
        
        RiskDataManager.shared.age = Double(age)
    }
    
    
    func enableBtnNext() {
        if RiskDataManager.shared.age >= 25 && RiskDataManager.shared.age <= 84 {
            btnNext.isEnabled = true
            btnNext.alpha = 1.0
        } else {
            btnNext.isEnabled = false
            btnNext.alpha = 0.5
        }
    }
    
    
    //MARK: Date Picker View Methods
    @IBAction func datePickerViewChanged(_ sender: UIDatePicker) {
        RiskDataManager.shared.dateOfBirth = datePickerAge.date
        RiskDataManager.shared.calculateAndStoreAge()
        enableBtnNext()
    }
    
    
    //MARK: Button Methods
    @IBAction func btnNextClicked(_ sender: UIButton) {
    }
    
}

