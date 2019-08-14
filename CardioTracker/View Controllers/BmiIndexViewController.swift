//
//  BmiIndexViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 07/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class BmiIndexViewController: UIViewController {
    
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imgViewHeart: UIImageView!
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    
    @IBOutlet weak var imgViewCircle: UIImageView!
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFieldHeight.keyboardType = .numberPad
        txtFieldWeight.keyboardType = .numberPad
        self.addDoneButtonOnKeyboard()
        
        //MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblHeightWeight.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        lblHeight.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblWeight.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblDesc.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        
        //MARK: Button
        btnFinish.layer.cornerRadius = 15
        btnFinish.clipsToBounds = true
        btnFinish.backgroundColor = UIColor(red: 190/255, green: 8/255, blue: 8/255, alpha: 1)
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
        txtFieldHeight.resignFirstResponder()
        txtFieldWeight.resignFirstResponder()
    }
    
    @IBAction func btnFinishSelected(_ sender: UIButton) {
        
        if txtFieldHeight.text == "" || txtFieldWeight.text == "" {
            return
        }
        
        guard let textHeight = txtFieldHeight.text else { return }
        RiskDataManager.shared.height = textHeight
        
        guard let textWeight = txtFieldWeight.text else { return }
        RiskDataManager.shared.weight = textWeight
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
