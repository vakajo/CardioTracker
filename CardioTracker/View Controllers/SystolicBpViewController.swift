//
//  SystolicBpViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 07/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class SystolicBpViewController: UIViewController {

    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    @IBOutlet weak var btnCircle: UIButton!
    @IBOutlet weak var lblQuestions: UILabel!
    @IBOutlet weak var lblChooseSystolicBP: UILabel!
    @IBOutlet weak var txtFieldSystolicBP: UITextField!
    @IBOutlet weak var btnUnknownSystolicBp: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var viewSepTop: UIView!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var viewSepBottom: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFieldSystolicBP.keyboardType = .decimalPad
        btnNext.isEnabled = false
        btnNext.alpha = 0.5
        self.addDoneButtonOnKeyboard()
        
        //MARK: Labels Layout
        let lblArr = [lblC, lblCardio, lblT, lblTracker]
        
        for label in lblArr {
            label?.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        }
        
        lblCardio.attributedText = NSAttributedString(string: "ARDIO",attributes:[ NSAttributedString.Key.kern: 1.3])
        lblTracker.attributedText = NSAttributedString(string: "RACKER",attributes:[ NSAttributedString.Key.kern: 1.2])
        
        lblChooseSystolicBP.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        lblDesc.textColor = .darkGray
        
        
        //MARK: Buttons Layout
        let buttons = [btnUnknownSystolicBp, btnNext]
        
        for index in buttons {
            index!.layer.cornerRadius = 15
            index!.clipsToBounds = true
            index!.layer.borderWidth = 1.25
            index!.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
            index!.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        }
        
        btnUnknownSystolicBp!.titleLabel!.numberOfLines = 0
        btnUnknownSystolicBp.titleLabel!.textAlignment = NSTextAlignment.center
        
        btnCircle.setImage(nil, for: .normal)
        btnCircle.layer.borderColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1).cgColor
        btnCircle.layer.borderWidth = 1.0
        btnCircle.layer.cornerRadius = btnCircle.frame.size.height/2.0
    }
    
    func addDoneButtonOnKeyboard(){
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        txtFieldSystolicBP.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction(){
        txtFieldSystolicBP.resignFirstResponder()
    }
    
    //MARK: Button Methods
    func buttonTapped(sender: UIButton) {
        sender.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
        sender.setTitleColor(.white, for: [])
    }
    
    @IBAction func btnUnknownSystolicBpSelected(_ sender: UIButton) {
        buttonTapped(sender: btnUnknownSystolicBp)
        txtFieldSystolicBP.text = ""
    }
    
    @IBAction func txtFieldSystolicBloodPressureSelected(_ sender: UITextField) {
        
        btnUnknownSystolicBp.isSelected = false
        btnUnknownSystolicBp.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
        btnUnknownSystolicBp.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        btnUnknownSystolicBp.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
    }
    
    @IBAction func txtFieldSystolicBloodPressureEdited(_ sender: UITextField) {
        
        if txtFieldSystolicBP.text!.isEmpty {
            btnNext.isEnabled = false
            btnNext.alpha = 0.5
        } else {
            btnNext.isEnabled = true
            btnNext.alpha = 1.0
        }
    }
    
    
    @IBAction func btnNextSelected(_ sender: UIButton) {
        
        if txtFieldSystolicBP.text == "" {
            return
        }
        
        guard let text = txtFieldSystolicBP.text else { return }
        guard let dblSystolicBloodPressure = Double(text) else { return }
        RiskDataManager.shared.systolicBloodPressure = dblSystolicBloodPressure
        
    }

}
