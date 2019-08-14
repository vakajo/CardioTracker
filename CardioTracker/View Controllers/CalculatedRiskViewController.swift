//
//  CalculatedRiskViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 09/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class CalculatedRiskViewController: UIViewController {
    
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imgViewHeart: UIImageView!
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    @IBOutlet weak var lblRisk: UILabel!
    @IBOutlet weak var viewLabels: UIView!
    @IBOutlet weak var lblRiskValue: UILabel!
    @IBOutlet weak var lblPercentage: UILabel!
    @IBOutlet weak var viewSepTop: UIView!
    @IBOutlet weak var lblInfo: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var viewSepBottom: UIView!
    @IBOutlet weak var lblConnect: UILabel!
    @IBOutlet weak var btnConnect: UIButton!
    @IBOutlet weak var btnLater: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblRisk.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblRiskValue.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblRiskValue.text = String(RiskDataManager.shared.computedRisk)
        lblPercentage.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        
        lblConnect.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblInfo.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblDesc
            .textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        
        let buttons = [btnConnect, btnLater]
        
        //MARK: Button
        for button in buttons {
            button!.layer.cornerRadius = 15
            button!.clipsToBounds = true
            button!.backgroundColor = UIColor(red: 190/255, green: 8/255, blue: 8/255, alpha: 1)
        }
    }
    


}
