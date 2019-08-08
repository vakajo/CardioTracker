//
//  MedicationViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 07/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class MedicationViewController: UIViewController {

    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imgViewHeart: UIImageView!
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    
    @IBOutlet weak var imgViewCircle: UIImageView!
    @IBOutlet weak var lblQuestions: UILabel!
    
    @IBOutlet weak var lblMedication: UILabel!
    @IBOutlet weak var btnBloodPressure: UIButton!
    @IBOutlet weak var btnAntipsychotic: UIButton!
    @IBOutlet weak var btnSteroid: UIButton!
    @IBOutlet weak var btnHealthy: UIButton!
    
    @IBOutlet weak var btnNext: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblMedication.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        
        //MARK: Buttons Layout
        let buttons = [btnBloodPressure, btnAntipsychotic, btnSteroid, btnHealthy, btnNext]
        
        for index in buttons {
            index!.layer.cornerRadius = 15
            index!.clipsToBounds = true
            index!.layer.borderWidth = 1
            index!.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
            index!.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        }
        
        btnHealthy!.titleLabel!.numberOfLines = 0
        btnHealthy.titleLabel!.textAlignment = NSTextAlignment.center
    }
    
    //MARK: Button Methods
    func buttonTapped(sender: UIButton) {
        sender.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
        sender.setTitleColor(.white, for: [])
    }
    
    @IBAction func btnSelected(_ sender: AnyObject) {
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            button.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
            button.setTitleColor(.white, for: [])
        }
        else {
            button.isSelected = false
            button.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            button.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
            button.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        }
    }
    
    @IBAction func btnBloodPressureSel(_ sender: UIButton) {
        btnSelected(btnBloodPressure)
    }
    
    @IBAction func btnAntipsychoticSel(_ sender: UIButton) {
        btnSelected(btnAntipsychotic)
    }
    
    @IBAction func btnSteroidSel(_ sender: UIButton) {
        btnSelected(btnSteroid)
    }
    
    @IBAction func btnHealthySel(_ sender: UIButton) {
        btnSelected(btnHealthy)
    }
    
    @IBAction func btnNextSelected(_ sender: UIButton) {
        buttonTapped(sender: btnNext)
    }
    
    
    
    


}
