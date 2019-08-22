//
//  BmiIndexViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 07/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class BmiIndexViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    
    @IBOutlet weak var btnCircle: UIButton!
    @IBOutlet weak var lblQuestions: UILabel!
    
    @IBOutlet weak var lblHeightWeight: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var txtFieldHeight: UITextField!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var txtFieldWeight: UITextField!
    @IBOutlet weak var btnFinish: UIButton!
    
    @IBOutlet weak var viewSepTop: UIView!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var viewSepBottom: UIView!
    
    var activeTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnFinish.isEnabled = false
        btnFinish.alpha = 0.5
        [txtFieldHeight, txtFieldWeight].forEach({ $0.addTarget(self, action: #selector(editingChanged), for: .editingChanged) })
        
        txtFieldHeight.keyboardType = .numberPad
        txtFieldHeight.delegate = self
        txtFieldWeight.keyboardType = .numberPad
        txtFieldWeight.delegate = self
        self.addDoneButtonOnKeyboard()
        txtFieldHeight.returnKeyType = .done

        
        //MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblHeightWeight.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        lblHeight.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblWeight.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblDesc.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblCardio.attributedText = NSAttributedString(string: "ARDIO",attributes:[ NSAttributedString.Key.kern: 1.3])
        lblTracker.attributedText = NSAttributedString(string: "RACKER",attributes:[ NSAttributedString.Key.kern: 1.2])
        
        //MARK: Button
        btnFinish.layer.cornerRadius = 15
        btnFinish.clipsToBounds = true
        btnFinish.backgroundColor = UIColor(red: 190/255, green: 8/255, blue: 8/255, alpha: 1)
        
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
        
        txtFieldHeight.inputAccessoryView = doneToolbar
        txtFieldWeight.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction(){
        
        if activeTextField == txtFieldHeight {
            
            if txtFieldWeight.text?.isEmpty == true {
                txtFieldWeight.becomeFirstResponder()
            } else {
                txtFieldHeight.resignFirstResponder()
            }
        } else if activeTextField == txtFieldWeight {
            txtFieldWeight.resignFirstResponder()
        }
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.activeTextField = textField
    }

    
    @objc func editingChanged(_ textField: UITextField) {
        if textField.text?.count == 1 {
            if textField.text?.first == " " {
                textField.text = ""
                return
            }
        }
        guard
            let height = txtFieldHeight.text, !height.isEmpty,
            let weight = txtFieldWeight.text, !weight.isEmpty
            else {
                btnFinish.isEnabled = false
                btnFinish.alpha = 0.5
                return
        }
        btnFinish.isEnabled = true
        btnFinish.alpha = 1.0
    }
    
    @IBAction func btnFinishSelected(_ sender: UIButton) {
        
        if txtFieldHeight.text == "" || txtFieldWeight.text == "" {
            return
        }
        
        guard let textHeight = txtFieldHeight.text else { return }
        guard let dblHeight = Double(textHeight) else { return }
        RiskDataManager.shared.height = dblHeight
        
        guard let textWeight = txtFieldWeight.text else { return }
        guard let dblWeight = Double(textWeight) else { return }
        RiskDataManager.shared.weight = dblWeight
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
