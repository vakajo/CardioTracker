//
//  SystolicBpViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 07/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class SystolicBpViewController: UIViewController {

    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imgViewHeart: UIImageView!
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    
    @IBOutlet weak var imgViewCircle: UIImageView!
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
        
        //MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblChooseSystolicBP.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        lblDesc.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        
        
        //MARK: Buttons Layout
        let buttons = [btnUnknownSystolicBp, btnNext]
        
        for index in buttons {
            index!.layer.cornerRadius = 15
            index!.clipsToBounds = true
            index!.layer.borderWidth = 1
            index!.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
            index!.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        }
        
        btnUnknownSystolicBp!.titleLabel!.numberOfLines = 0
        btnUnknownSystolicBp.titleLabel!.textAlignment = NSTextAlignment.center
    }
    
    //MARK: Button Methods
    func buttonTapped(sender: UIButton) {
        sender.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
        sender.setTitleColor(.white, for: [])
    }
    
    @IBAction func btnUnknownSystolicBpSelected(_ sender: UIButton) {
        buttonTapped(sender: btnUnknownSystolicBp)
    }
    
    @IBAction func btnNextSelected(_ sender: UIButton) {
    }
    
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion:     nil)
    }
   

}
