//
//  GenderViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 02/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class GenderViewController: UIViewController {
    
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    @IBOutlet weak var btnCircle: UIButton!
    @IBOutlet weak var lblQuestions: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var btnMale: UIButton!
    @IBOutlet weak var btnFemale: UIButton!
    @IBOutlet weak var viewSepTop: UIView!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var viewSepBottom: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Labels Layout
        let lblArr = [lblC, lblCardio, lblT, lblTracker]
        
        for label in lblArr {
            label?.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        }
        
        lblCardio.attributedText = NSAttributedString(string: "ARDIO",attributes:[ NSAttributedString.Key.kern: 1.3])
        lblTracker.attributedText = NSAttributedString(string: "RACKER",attributes:[ NSAttributedString.Key.kern: 1.2])
        
        lblGender.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        lblDesc
            .textColor = .darkGray
        
        //MARK: Buttons layout
        let buttons = [btnMale, btnFemale]
        
        for index in buttons {
            index!.layer.cornerRadius = 15
            index!.clipsToBounds = true
            index!.layer.borderWidth = 1
            index!.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
            index!.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        }
        
        //MARK: Circle & Question Number
        btnCircle.setImage(nil, for: .normal)
        btnCircle.layer.borderColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1).cgColor
        btnCircle.layer.borderWidth = 1.0
        btnCircle.layer.cornerRadius = btnCircle.frame.size.height/2.0
    }
    
    // Change colour of button when pressed
    func buttonTapped(sender: UIButton) {
        
        if sender == btnMale {
            btnFemale.isSelected = false
            btnMale.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
            btnMale.setTitleColor(.white, for: [])
        } else {
            btnMale.isSelected = false
            btnMale.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
            btnMale.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            btnMale.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        }
        
        if sender == btnFemale {
            btnMale.isSelected = false
            btnFemale.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
            btnFemale.setTitleColor(.white, for: [])
        } else {
            btnFemale.isSelected = false
            btnFemale.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
            btnFemale.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            btnFemale.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        }
    }
    

    @IBAction func btnMaleClicked(_ sender: UIButton) {
        buttonTapped(sender: btnMale)
        RiskDataManager.shared.gender = .male
    }
    
    @IBAction func btnFemaleClicked(_ sender: UIButton) {
        buttonTapped(sender: btnFemale)
        RiskDataManager.shared.gender = .female
    }
}

