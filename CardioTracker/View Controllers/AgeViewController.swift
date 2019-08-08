//
//  AgeViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 02/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class AgeViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imgViewHeart: UIImageView!
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    
    @IBOutlet weak var imgViewCircle: UIImageView!
    @IBOutlet weak var lblQuestions: UILabel!
    
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var txtFieldAge: UITextField!
    @IBOutlet weak var btnNext: UIButton!
    
    @IBOutlet weak var viewSepTop: UIView!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var viewSepBottom: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ATH: Enabla takkann aðeins þegar það er komið input???
        txtFieldAge.keyboardType = .numberPad
        txtFieldAge.delegate = self
        
        // MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        
        lblAge.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        
        lblDesc
            .textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        
        
        //MARK: Buttons layout
        btnNext.layer.cornerRadius = 15
        btnNext.clipsToBounds = true
        btnNext.layer.borderWidth = 1
        btnNext.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
        btnNext.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
    }
    
    // Change color of button when pressed
    func buttonTapped(sender: UIButton) {
        sender.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
        sender.setTitleColor(.white, for: [])
    }
    
    @IBAction func btnNextClicked(_ sender: UIButton) {
        
        if txtFieldAge.text == ""{
            return
        }
        
        guard let text = txtFieldAge.text else { return }
        let dataManager = RiskDataManager.shared
        dataManager.age = text
        buttonTapped(sender: btnNext)
        
        
        
        let dummyRisk = DummyRisk(age: RiskDataManager.shared.age, isMale: RiskDataManager.shared.isMale)
        
        let age = dataManager.age
        let isMale = dataManager.isMale
        
        let myOtherRisk = DummyRisk(age: age, isMale: isMale)
        
        
        let myRisk = dummyRisk.computedRisk
        print(myRisk)
        print(myOtherRisk.computedRisk)
    }
    
}

class DummyRisk{
    
    var age: String = ""
    var isMale: Bool = false
    
    var computedRisk: Double = 0
    
    init(age: String, isMale: Bool){
        self.age = age
        self.isMale = isMale
        
        computeRisk()
    }
    
    func computeRisk(){
        
        if isMale == true{
            computedRisk = 5
        }
    }
}
