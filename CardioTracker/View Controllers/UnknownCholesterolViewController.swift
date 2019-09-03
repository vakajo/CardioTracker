//
//  UnknownCholesterolViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 07/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class UnknownCholesterolViewController: UIViewController {

    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    @IBOutlet weak var btnCircle: UIButton!
    @IBOutlet weak var lblQuestions: UILabel!
    @IBOutlet weak var lblChooseCholesterol: UILabel!
    @IBOutlet weak var btnHigh: UIButton!
    @IBOutlet weak var btnAverage: UIButton!
    @IBOutlet weak var btnLow: UIButton!
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
        
        lblChooseCholesterol.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        lblDesc.textColor = .darkGray
       
    
        //MARK: Buttons Layout
        let buttons = [btnHigh, btnAverage, btnLow]
        
        for index in buttons {
            index!.layer.cornerRadius = 15
            index!.clipsToBounds = true
            index!.layer.borderWidth = 1
            index!.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
            index!.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        }
        
        btnCircle.setImage(nil, for: .normal)
        btnCircle.layer.borderColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1).cgColor
        btnCircle.layer.borderWidth = 1.0
        btnCircle.layer.cornerRadius = btnCircle.frame.size.height/2.0

    }
    
    //MARK: Button Methods
    func buttonTapped(sender: UIButton) {
        sender.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
        sender.setTitleColor(.white, for: [])
    }
    
    
    @IBAction func btnHighSelected(_ sender: UIButton) {
        buttonTapped(sender: btnHigh)
        RiskDataManager.shared.cholesterolHDL = 5
    }
    
    @IBAction func btnAverageSelected(_ sender: UIButton) {
        buttonTapped(sender: btnAverage)
        RiskDataManager.shared.cholesterolHDL = 3.5
    }
    
    @IBAction func btnLowSelected(_ sender: UIButton) {
        buttonTapped(sender: btnLow)
        RiskDataManager.shared.cholesterolHDL = 2
    }
    
}
