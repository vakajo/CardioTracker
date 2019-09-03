//
//  CalculatedRiskViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 09/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit
import HealthKit


class CalculatedRiskViewController: UIViewController {
    
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    @IBOutlet weak var lblRisk: UILabel!
    @IBOutlet weak var viewLabels: UIView!
    @IBOutlet weak var lblRiskValue: UILabel!
    @IBOutlet weak var viewSepTop: UIView!
    @IBOutlet weak var lblInfo: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var viewSepBottom: UIView!
    @IBOutlet weak var btnTrack: UIButton!
    @IBOutlet weak var lblConnected: UILabel!
    @IBOutlet weak var BtnDisclaimer: UIButton!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Profile", style: .plain, target: self, action: #selector(navigateToProfile))
        
        RiskDataManager.shared.retrieveConnection()
        
        // Hide Track Button if connection has been established
        if RiskDataManager.shared.connectedClicked == false {
            btnTrack.isHidden = true
            lblConnected.isHidden = true
        }
        
        // Check if User Defaults have been saved, and if so, retrieve saved Variables
        if defaults.string(forKey: Keys.gender) != nil {
            RiskDataManager.shared.retrieveVariables()
        }
        
        // Calculate current age, from date of birth, which is stored in User Defaults
        RiskDataManager.shared.calculateAndStoreAge()
        
        // Check if HealthKit is authorised, and if so, load most recent Vo2max data and calculate risk.
        // Afterwards, finish the screen setup of this view controller.
        
        //if status == .sharingAuthorized
        if RiskDataManager.shared.connectedClicked == true {
            RiskDataManager.shared.loadMostRecentVo2maxDataAndCalculateRisk {
                
                ProfileDataStore().saveBloodPressureMeasurement(systolic: RiskDataManager.shared.estimatedSystolicBP, date: Date())
                self.finishScreenSetup()
            }
        } else {
            if RiskDataManager.shared.gender == .female {
                RiskDataManager.shared.computedRisk = RiskDataManager.shared.computeFemaleRisk()
            } else if RiskDataManager.shared.gender == .male {
                RiskDataManager.shared.computedRisk = RiskDataManager.shared.computeMaleRisk()
            }
            finishScreenSetup()
        }
    }
    
    func finishScreenSetup(){
        
        let risk = RiskDataManager.shared.computedRisk
        
        // Store Date for Tracking Graph
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy.MM.dd HH:mm:ss"
        let dateString = formatter.string(from: date)
        let yourDate = formatter.date(from: dateString)
        formatter.dateFormat = "dd.MM.yyyy"
        let finalDateString = formatter.string(from: yourDate!)
        
        // Set Risk and Date Arrays for Tracking Graph
        RiskDataManager.shared.retrieveRiskAndDateArrs()
        RiskDataManager.shared.riskArr.append(risk)
        RiskDataManager.shared.dateArr.append(finalDateString)
        RiskDataManager.shared.storeRiskAndDateArrs()
        
        let roundedRisk = String(format: "%.1f", risk) + "%"
        
        // Store all variables to User Defaults.
        RiskDataManager.shared.storeVariables()
        
        
        // MARK: Labels Layout
        let lblArr = [lblC, lblCardio, lblT, lblTracker, lblRiskValue]
        
        for label in lblArr {
            label?.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        }
        
        lblCardio.attributedText = NSAttributedString(string: "ARDIO",attributes:[ NSAttributedString.Key.kern: 1.3])
        lblTracker.attributedText = NSAttributedString(string: "RACKER",attributes:[ NSAttributedString.Key.kern: 1.2])
        
        lblRisk.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblRiskValue.text = String(roundedRisk)
        lblConnected.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblInfo.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblDesc.textColor = .darkGray
        lblConnected.attributedText = NSAttributedString(string: "This app is connected to the Health app.",attributes:[ NSAttributedString.Key.kern: 0.5])
        
        if risk < 10 {
            lblInfo.text = "LOW RISK"
            lblDesc.text = "You are at low risk of developing cardiovascular disease in the next 10-years. If you are concerned about the estimated risk, you can see a doctor or nurse for a full risk assessment. Please note that this result is an estimate only."
        } else if risk >= 10 && risk <= 20 {
            lblInfo.text = "MEDIUM RISK"
            lblDesc.text = "You are at moderate risk of developing cardiovascular disease in the next 10-years. It is recommended to see doctor or nurse for a full risk assessment. Please note that this result is an estimate only."
        } else if risk > 20 {
            lblInfo.text = "HIGH RISK"
            lblDesc.text = "You are at high risk of developing cardiovascular disease in the next 10-years. It is highly recommended to see a doctor or nurse for a full risk assessment at your earliest convenience. Please note that this result is an estimate only."
        }
        
        
        //MARK: Buttons
        btnTrack.layer.cornerRadius = 15
        btnTrack.clipsToBounds = true
        btnTrack.backgroundColor = UIColor(red: 190/255, green: 8/255, blue: 8/255, alpha: 1)
        
        BtnDisclaimer.layer.cornerRadius = 10
        BtnDisclaimer.clipsToBounds = true
        BtnDisclaimer.layer.borderWidth = 1
        BtnDisclaimer.layer.borderColor = (UIColor(red: 150.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 1.0)).cgColor
        BtnDisclaimer.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
    }
    
    
    
    @IBAction func btnTrackClicked(_ sender: UIButton) {
    }
    

    
    
    
    @objc func navigateToProfile() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
}
