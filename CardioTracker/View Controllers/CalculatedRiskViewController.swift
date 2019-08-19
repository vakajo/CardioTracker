//
//  CalculatedRiskViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 09/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit


class CalculatedRiskViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imgViewHeart: UIImageView!
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let risk = RiskDataManager.shared.computedRisk
        let roundedRisk = String(format: "%.1f", risk) + "%"
        
        // MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblRisk.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblRiskValue.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblRiskValue.text = String(roundedRisk)
        lblConnect.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblInfo.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblDesc
            .textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        
        let buttons = [btnConnect]
        
        //MARK: Button
        for button in buttons {
            button!.layer.cornerRadius = 15
            button!.clipsToBounds = true
            button!.backgroundColor = UIColor(red: 190/255, green: 8/255, blue: 8/255, alpha: 1)
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
    
    
    @IBAction func btnBackClicked(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    //IF Health Kit has been connected, hide button!
    @IBAction func btnConnectClicked(_ sender: UIButton) {
        
        authoriseHealthKit()
    }
    
    @IBAction func btnProfile(_ sender: UIButton) {
        
    }
    
    
    
    


}
