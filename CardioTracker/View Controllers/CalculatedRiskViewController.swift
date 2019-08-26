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
    
    @IBOutlet weak var btnBack: UIButton!
    
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
    @IBOutlet weak var btnProfile: UIButton!
    
    @IBOutlet weak var btnTrack: UIButton!
    
    @IBOutlet weak var lblConnected: UILabel!
    
    
    let defaults = UserDefaults.standard
    
    struct Keys {
        static let updatedRisk = "updatedRisk"
        static let updatedDate = "updatedDate"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //lblConnected.isHidden = true
        //btnTrack.isHidden = true
        
        RiskDataManager.shared.loadMostRecentVo2maxData()
        
        let risk = RiskDataManager.shared.computedRisk
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy.MM.dd HH:mm:ss"
        
        let dateString = formatter.string(from: date)
        let yourDate = formatter.date(from: dateString)
        formatter.dateFormat = "dd.MM.yyyy"
        let finalDateString = formatter.string(from: yourDate!)
        print(finalDateString)
        
        retrieveRiskAndDateArrs()
        RiskDataManager.shared.riskArr.append(risk)
        RiskDataManager.shared.dateArr.append(finalDateString)
        storeRiskAndDateArrs()
        
        let roundedRisk = String(format: "%.1f", risk) + "%"
        
        
        // MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblRisk.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblRiskValue.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblRiskValue.text = String(roundedRisk)
        lblConnected.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblInfo.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblDesc
            .textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblCardio.attributedText = NSAttributedString(string: "ARDIO",attributes:[ NSAttributedString.Key.kern: 1.3])
        lblTracker.attributedText = NSAttributedString(string: "RACKER",attributes:[ NSAttributedString.Key.kern: 1.2])
        lblConnected.attributedText = NSAttributedString(string: "This app is connected to the Health app.",attributes:[ NSAttributedString.Key.kern: 1.0])
        
        
        //MARK: Buttons
        let buttons = [btnTrack]
        
        for button in buttons {
            button!.layer.cornerRadius = 15
            button!.clipsToBounds = true
            button!.backgroundColor = UIColor(red: 190/255, green: 8/255, blue: 8/255, alpha: 1)
        }
        
        btnProfile.setTitleColor(UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1), for: .normal)
        
        // Hide Track Button if Not connected to HealthKit
//        let pressure = HKQuantityType.quantityType(forIdentifier: .bloodPressureSystolic)!
//        let statusPressure = HKHealthStore().authorizationStatus(for: pressure)
//
//        if statusPressure == .sharingAuthorized {
//            btnTrack.isHidden = true
//            lblConnected.isHidden = true
//        }
        
        
    }
    
    
    
    
    @IBAction func btnBackClicked(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    //IF Health Kit has been connected, hide button!
    
    
    @IBAction func btnProfile(_ sender: UIButton) {
    }
    
    
    @IBAction func btnTrackClicked(_ sender: UIButton) {
    }
    
    func storeRiskAndDateArrs() {
        defaults.set(RiskDataManager.shared.riskArr, forKey: Keys.updatedRisk)
        defaults.set(RiskDataManager.shared.dateArr, forKey: Keys.updatedDate)
    }
    
    func retrieveRiskAndDateArrs() {
        RiskDataManager.shared.riskArr = defaults.array(forKey: Keys.updatedRisk) as? [Double] ?? [Double]()
        RiskDataManager.shared.dateArr = defaults.array(forKey: Keys.updatedDate) as? [String] ?? [String]()
    }
    
    
    
    
}
