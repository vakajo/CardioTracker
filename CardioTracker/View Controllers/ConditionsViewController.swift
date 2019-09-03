//
//  ConditionsViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 07/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//
import UIKit

class ConditionsViewController: UIViewController {
    
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    @IBOutlet weak var btnCircle: UIButton!
    @IBOutlet weak var lblQuestions: UILabel!
    @IBOutlet weak var lblConditions: UILabel!
    @IBOutlet weak var lblKidney: UILabel!
    @IBOutlet weak var checkBoxKidney: UIButton!
    @IBOutlet weak var lblAtrialFibrillation: UILabel!
    @IBOutlet weak var checkBoxAtrialFibrillation: UIButton!
    @IBOutlet weak var lblMigraines: UILabel!
    @IBOutlet weak var checkBoxMigraines: UIButton!
    @IBOutlet weak var lblRheumatoidArthritis: UILabel!
    @IBOutlet weak var checkBoxRheumatoidArthritis: UIButton!
    @IBOutlet weak var lblSle: UILabel!
    @IBOutlet weak var checkBoxSle: UIButton!
    @IBOutlet weak var lblSevereMentalIllness: UILabel!
    @IBOutlet weak var checkBoxSevereMentalIllness: UIButton!
    @IBOutlet weak var lblErectileDysfunction: UILabel!
    @IBOutlet weak var checkBoxErectileDysfunction: UIButton!
    @IBOutlet weak var lblHealthy: UILabel!
    @IBOutlet weak var checkBoxHealthy: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if RiskDataManager.shared.gender == .female {
            lblErectileDysfunction.isHidden = true
            checkBoxErectileDysfunction.isHidden = true
        }
        
        btnNext.isEnabled = false
        btnNext.alpha = 0.5
        
        //MARK: Labels Layout
        let lblArr = [lblC, lblCardio, lblT, lblTracker]
        
        for label in lblArr {
            label?.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        }
        
        lblCardio.attributedText = NSAttributedString(string: "ARDIO",attributes:[ NSAttributedString.Key.kern: 1.3])
        lblTracker.attributedText = NSAttributedString(string: "RACKER",attributes:[ NSAttributedString.Key.kern: 1.2])
        
        lblConditions.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)

        
        //MARK: Buttons Layout
        btnNext.layer.cornerRadius = 15
        btnNext.clipsToBounds = true
        btnNext.layer.borderWidth = 1
        btnNext.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
        btnNext.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        
        
        let arrButtons = [checkBoxHealthy, checkBoxErectileDysfunction,  checkBoxSevereMentalIllness, checkBoxSle, checkBoxRheumatoidArthritis, checkBoxMigraines, checkBoxAtrialFibrillation, checkBoxKidney]
        
        for button in arrButtons{
            guard let btn = button else { return }
            setupBtnForEmptyCheckbox(button: btn)
        }
        
        btnCircle.setImage(nil, for: .normal)
        btnCircle.layer.borderColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1).cgColor
        btnCircle.layer.borderWidth = 1.0
        btnCircle.layer.cornerRadius = btnCircle.frame.size.height/2.0
    }
    
    
    //MARK: Button Methods
    
    func enableNextBtn() {
        btnNext.isEnabled = true
        btnNext.alpha = 1.0
    }
    
    func disableNextBtn() {
        btnNext.isEnabled = false
        btnNext.alpha = 0.5
    }
    
    func deselectHealthyCheckBox() {
        checkBoxHealthy.isSelected = false
        setupBtnForEmptyCheckbox(button: checkBoxHealthy)
    }
    
    func setupBtnForEmptyCheckbox(button: UIButton){
        button.setImage(nil, for: .normal)
        let btnBorderColor = UIColor(red: 139/255, green: 30/255, blue: 22/255, alpha: 1).cgColor
        button.layer.borderColor = btnBorderColor
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = button.frame.size.height/2.0
    }
    
    func setupBtnForChecked(button: UIButton){
        button.setImage(UIImage(named: "Checked"), for: .normal)
        button.layer.borderWidth = 0
    }
    
    func buttonTapped(sender: UIButton) {
        sender.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
        sender.setTitleColor(.white, for: [])
    }
    
    func checkBoxTapped(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            setupBtnForEmptyCheckbox(button: sender)
            
            let arrButtons = [checkBoxHealthy, checkBoxErectileDysfunction,  checkBoxSevereMentalIllness, checkBoxSle, checkBoxRheumatoidArthritis, checkBoxMigraines, checkBoxAtrialFibrillation, checkBoxKidney]
            
            var selected = false
            
            for button in arrButtons {
                if button!.isSelected {
                    selected = true
                }
            }
            
            if selected == false {
                disableNextBtn()
            }
            
        } else {
            sender.isSelected = true
            setupBtnForChecked(button: sender)
            enableNextBtn()
        }
    }
    
    @IBAction func checkBoxKidneySelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxKidney)
        if sender.isSelected {
            RiskDataManager.shared.chronicKidneyDisease = true
            deselectHealthyCheckBox()
        }
    }
    
    @IBAction func checkBoxAtrialFibrillationSelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxAtrialFibrillation)
        if sender.isSelected {
            RiskDataManager.shared.atrialFibrillation = true
            deselectHealthyCheckBox()
        }
    }
    
    @IBAction func checkBoxMigranesSelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxMigraines)
        if sender.isSelected {
            RiskDataManager.shared.migraines = true
            deselectHealthyCheckBox()
        }
    }
    
    @IBAction func checkBoxRheumatoidArthritisSelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxRheumatoidArthritis)
        if sender.isSelected {
            RiskDataManager.shared.rheumatoidArthritis = true
            deselectHealthyCheckBox()
        }
    }
    
    @IBAction func checkBoxSleSelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxSle)
        if sender.isSelected {
            RiskDataManager.shared.systemicLupusErythematosus = true
            deselectHealthyCheckBox()
        }
    }
    
    @IBAction func checkBoxSevereMentalIllnessSelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxSevereMentalIllness)
        if sender.isSelected {
            RiskDataManager.shared.severeMentalIllness = true
            deselectHealthyCheckBox()
        }
    }
    
    @IBAction func checkBoxErectileDysfunctionSelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxErectileDysfunction)
        if sender.isSelected {
            RiskDataManager.shared.erectileDysfunction = true
            deselectHealthyCheckBox()
        }
        
    }
    
    
    
    @IBAction func checkBoxHealthySelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxHealthy)
        if sender.isSelected {
            
            let arrButtons = [checkBoxErectileDysfunction,  checkBoxSevereMentalIllness, checkBoxSle, checkBoxRheumatoidArthritis, checkBoxMigraines, checkBoxAtrialFibrillation, checkBoxKidney]
            
            for buttons in arrButtons {
                buttons!.isSelected = false
                setupBtnForEmptyCheckbox(button: buttons!)
            }
            
            RiskDataManager.shared.noConditions = true
        }
    }
    
    @IBAction func btnNextSelected(_ sender: UIButton) {
    }
}
