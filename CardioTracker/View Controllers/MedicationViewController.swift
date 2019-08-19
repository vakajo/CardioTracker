//
//  MedicationViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 07/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class MedicationViewController: UIViewController {

    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imgViewHeart: UIImageView!
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    
    @IBOutlet weak var imgViewCircle: UIImageView!
    @IBOutlet weak var lblQuestions: UILabel!
    
    @IBOutlet weak var lblMedication: UILabel!
    
    
    @IBOutlet weak var lblBloodPressureTreatment: UILabel!
    @IBOutlet weak var btnBloodPressureTreatment: UIButton!
    @IBOutlet weak var lblAtypicalAntipsychotic: UILabel!
    @IBOutlet weak var btnAtypicalAntipsychotic: UIButton!
    @IBOutlet weak var lblSteroidTablets: UILabel!
    @IBOutlet weak var btnSteroidTablets: UIButton!
    @IBOutlet weak var lblHealthy: UILabel!
    @IBOutlet weak var btnHealthy: UIButton!
    
    @IBOutlet weak var btnNext: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnNext.isEnabled = false
        btnNext.alpha = 0.5
        
        //MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblMedication.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        
        //MARK: Buttons Layout
            btnNext.layer.cornerRadius = 15
            btnNext.clipsToBounds = true
            btnNext.layer.borderWidth = 1
            btnNext.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
            btnNext.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        
        let arrButtons = [btnBloodPressureTreatment, btnAtypicalAntipsychotic, btnSteroidTablets, btnHealthy]
        
        for button in arrButtons {
            guard let btn = button else { return }
            setupBtnForEmptyCheckbox(button: btn)
        }
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
        btnHealthy.isSelected = false
        setupBtnForEmptyCheckbox(button: btnHealthy)
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
            
            let arrButtons = [btnBloodPressureTreatment, btnAtypicalAntipsychotic, btnSteroidTablets, btnHealthy]
            
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
            enableNextBtn()
        }
    }
    
    
    @IBAction func btnBloodPressureSelected(_ sender: UIButton) {
        checkBoxTapped(btnBloodPressureTreatment)
        if sender.isSelected {
            RiskDataManager.shared.bloodPressureTreatment = true
            deselectHealthyCheckBox()
        }
    }
    
    @IBAction func btnAtypicalAntypsychoticSelected(_ sender: UIButton) {
        checkBoxTapped(btnAtypicalAntipsychotic)
        if sender.isSelected {
            RiskDataManager.shared.atypicalAntipsychoticMedication = true
            deselectHealthyCheckBox()
        }
    }
    
    @IBAction func btnSteroidTabletsSelected(_ sender: UIButton) {
        checkBoxTapped(btnSteroidTablets)
        if sender.isSelected {
            RiskDataManager.shared.regularSteroidTablets = true
            deselectHealthyCheckBox()
        }
    }
    
    @IBAction func btnHealthySelected(_ sender: UIButton) {
        checkBoxTapped(btnHealthy)
        if sender.isSelected {
            
            let arrButtons = [btnBloodPressureTreatment, btnAtypicalAntipsychotic, btnSteroidTablets]
            
            for buttons in arrButtons {
                buttons!.isSelected = false
                setupBtnForEmptyCheckbox(button: buttons!)
            }
            
            RiskDataManager.shared.noMedications = true
        }
    }
    
    @IBAction func btnNextSelected(_ sender: UIButton) {
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
