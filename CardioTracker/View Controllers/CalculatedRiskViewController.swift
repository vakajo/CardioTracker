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
    @IBOutlet weak var lblConnect: UILabel! //IF Health Kit has been connected, hide label!
    @IBOutlet weak var btnConnect: UIButton! //IF Health Kit has been connected, hide button!
    @IBOutlet weak var btnProfile: UIButton!
    
    @IBOutlet weak var btnTrack: UIButton!
    
    @IBOutlet weak var lblConnected: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblConnected.isHidden = true
        btnTrack.isHidden = true

        let risk = RiskDataManager.shared.computedRisk
        let roundedRisk = String(format: "%.1f", risk) + "%"
        
        // Hide Connect Button if Health Kit has already been authorised
        //let pressure = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bloodPressureSystolic)!
        let vo2max = HKSampleType.quantityType(forIdentifier: .vo2Max)!
        //let somethingElse = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.height)!
        
        //let statusPressure = HKHealthStore().authorizationStatus(for: pressure)
        let statusVo2Max = HKHealthStore().authorizationStatus(for: vo2max)
        //let statusSomethingElse = HKHealthStore().authorizationStatus(for: somethingElse)
        
        var status: HKAuthorizationStatus = .notDetermined
        
        if statusVo2Max == .sharingAuthorized /*&& statusSomethingElse == .sharingAuthorized*/ {
            status = .sharingAuthorized
        }
        
        if status == .sharingAuthorized {
            lblConnect.isHidden = true
            lblConnected.isEnabled = false
            btnConnect.isHidden = true
            lblConnected.isHidden = false
            btnTrack.isHidden = false
            print("Risk after connecting \(RiskDataManager.shared.computedRisk)")
        }
        
        // MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblRisk.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblRiskValue.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblRiskValue.text = String(roundedRisk)
        lblConnect.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblConnected.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblInfo.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblDesc
            .textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblCardio.attributedText = NSAttributedString(string: "ARDIO",attributes:[ NSAttributedString.Key.kern: 1.3])
        lblTracker.attributedText = NSAttributedString(string: "RACKER",attributes:[ NSAttributedString.Key.kern: 1.2])
        lblConnected.attributedText = NSAttributedString(string: "This app is connected to the Health app.",attributes:[ NSAttributedString.Key.kern: 1.02])
        
        
        //MARK: Buttons
        let buttons = [btnConnect, btnTrack]
        
        for button in buttons {
            button!.layer.cornerRadius = 15
            button!.clipsToBounds = true
            button!.backgroundColor = UIColor(red: 190/255, green: 8/255, blue: 8/255, alpha: 1)
        }
        
        btnProfile.setTitleColor(UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1), for: .normal)
    }
    
    private func authoriseHealthKit() {
        
        HealthKitSetupAssistant.authorizeHealthKit { (authorized, error) in
            
            guard authorized else {
                
                let baseMessage = "HealthKit Authorization Failed"
                
                if let error = error {
                    print("\(baseMessage). Reason: \(error.localizedDescription)")
                } else {
                    print(baseMessage)
                }
                
                return
            }
            
            print("HealthKit Successfully Authorized.")
        }
        
    }
    
    
    @IBAction func btnBackClicked(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    //IF Health Kit has been connected, hide button!
    @IBAction func btnConnectClicked(_ sender: UIButton) {
        print("Risk is first \(RiskDataManager.shared.computedRisk)")

        authoriseHealthKit()
        
        print("Risk is then \(RiskDataManager.shared.computedRisk)")
    }
    
    @IBAction func btnProfile(_ sender: UIButton) {
        
    }
    
    
    
    


}
