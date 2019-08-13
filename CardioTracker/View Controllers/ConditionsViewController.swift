//
//  ConditionsViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 07/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class ConditionsViewController: UIViewController {
    
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imgViewHeart: UIImageView!
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    
    @IBOutlet weak var imgViewCircle: UIImageView!
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
    @IBOutlet weak var lblHealthy: UILabel!
    @IBOutlet weak var checkBoxHealthy: UIButton!
    
    
    
    @IBOutlet weak var btnNext: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblConditions.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        
        //MARK: Buttons Layout
        btnNext.layer.cornerRadius = 15
        btnNext.clipsToBounds = true
        btnNext.layer.borderWidth = 1
        btnNext.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
        btnNext.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        
        
        let arrButtons = [checkBoxHealthy, checkBoxSevereMentalIllness, checkBoxSle, checkBoxRheumatoidArthritis, checkBoxMigraines, checkBoxAtrialFibrillation, checkBoxKidney]
        
        for button in arrButtons{
            guard let btn = button else { return }
            setupBtnForEmptyCheckbox(button: btn)
        }
    }
    
    
    //MARK: Button Methods
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
        } else {
            sender.isSelected = true
            setupBtnForChecked(button: sender)
        }
    }
    
    @IBAction func checkBoxKidneySelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxKidney)
        if sender.isSelected {
            RiskDataManager.shared.conditions = .chronicKidneyDisease
        }
    }
    
    @IBAction func checkBoxAtrialFibrillationSelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxAtrialFibrillation)
        if sender.isSelected {
            RiskDataManager.shared.conditions = .atrialFibrillation
        }
    }
    
    @IBAction func checkBoxMigranesSelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxMigraines)
        if sender.isSelected {
            RiskDataManager.shared.conditions = .migraines
        }
    }
    
    @IBAction func checkBoxRheumatoidArthritisSelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxRheumatoidArthritis)
        if sender.isSelected {
            RiskDataManager.shared.conditions = .rheumatoidArthritis
        }
    }
    
    @IBAction func checkBoxSleSelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxSle)
        if sender.isSelected {
            RiskDataManager.shared.conditions = .systemicLupusErythematosus

        }
    }
    
    @IBAction func checkBoxSevereMentalIllnessSelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxSevereMentalIllness)
        if sender.isSelected {
            RiskDataManager.shared.conditions = .severeMentalIllness
        }
    }
    
    @IBAction func checkBoxHealthySelected(_ sender: UIButton) {
        checkBoxTapped(checkBoxHealthy)
        if sender.isSelected {
            RiskDataManager.shared.conditions = .none
        }
    }
    
    @IBAction func btnNextSelected(_ sender: UIButton) {
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

//    @IBAction func btnSelected(_ sender: AnyObject) {

//        guard let button = sender as? UIButton else { return }
//
//        if !button.isSelected {
//            button.isSelected = true
//            button.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
//            button.setTitleColor(.white, for: [])
//        }
//        else {
//            button.isSelected = false
//            button.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//            button.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
//            button.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
//        }
//    }
//
//    @IBAction func btnKidneySel(_ sender: UIButton) {
//        btnSelected(btnKidney)
//    }
//
//    @IBAction func btnAtrialSel(_ sender: UIButton) {
//        btnSelected(btnAtrial)
//    }
//
//    @IBAction func btnMigrainesSel(_ sender: UIButton) {
//        btnSelected(btnMigraines)
//    }
//
//    @IBAction func btnArthritisSel(_ sender: UIButton) {
//        btnSelected(btnArthritis)
//    }
//
//    @IBAction func btnSLESel(_ sender: UIButton) {
//        btnSelected(btnSLE)
//    }
//
//    @IBAction func btnMentalSel(_ sender: UIButton) {
//        btnSelected(btnMental)
//    }
//
//    @IBAction func btnHealthySel(_ sender: UIButton) {
//        btnSelected(btnHealthy)
//    }

