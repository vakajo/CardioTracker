//
//  ConnectViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 23/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit
import HealthKit



class ConnectViewController: UIViewController {
    
    
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    
    @IBOutlet weak var lblAutomaticallyConnect: UILabel!
    @IBOutlet weak var lblVariables1: UILabel!
    @IBOutlet weak var lblVariables2: UILabel!
    @IBOutlet weak var lblOneTimeRisk: UILabel!
    
    @IBOutlet weak var lblWarning: UILabel!
    @IBOutlet weak var lblConnected: UILabel!
    
    @IBOutlet weak var btnConnect: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Labels
        
        let lblArr = [lblC, lblCardio, lblT, lblTracker]
        
        for label in lblArr {
            label?.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        }
        
        let lblArrDesc = [lblAutomaticallyConnect, lblVariables1, lblVariables2, lblOneTimeRisk, lblWarning]
        
        for label in lblArrDesc {
            label?
                .textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        }
        
        
        lblCardio.attributedText = NSAttributedString(string: "ARDIO",attributes:[ NSAttributedString.Key.kern: 1.3])
        lblTracker.attributedText = NSAttributedString(string: "RACKER",attributes:[ NSAttributedString.Key.kern: 1.2])
        
        lblConnected.textColor = UIColor(red: 190/255, green: 8/255, blue: 8/255, alpha: 1)

        lblConnected.isHidden = true
        
        //MARK: Buttons
        let arrButtons = [btnConnect, btnContinue]
        
        for button in arrButtons {
            button?.layer.cornerRadius = 15
            button?.clipsToBounds = true
            button?.backgroundColor = UIColor(red: 190/255, green: 8/255, blue: 8/255, alpha: 1)
            button?.alpha = 0.9
        }
        
        // Hide Connect Button if Navigated Back
        let pressure = HKQuantityType.quantityType(forIdentifier: .bloodPressureSystolic)!
        let statusPressure = HKHealthStore().authorizationStatus(for: pressure)
        
        if statusPressure == .sharingAuthorized {
            btnConnect.isHidden = true
            lblConnected.isHidden = false
        }
        
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
    
    
    
    @IBAction func btnConnectClicked(_ sender: UIButton) {
        authoriseHealthKit()
        
        btnConnect.isHidden = true
        lblConnected.isHidden = false
    }
    
    
    
    @IBAction func btnContinueClicked(_ sender: UIButton) {
    }
    
    
   
    

    
    
}
