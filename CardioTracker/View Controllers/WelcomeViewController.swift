//
//  ViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 31/07/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var lblTo: UILabel!
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imgViewHeart: UIImageView!
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCartdio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    @IBOutlet weak var viewSepTop: UIView!
    @IBOutlet weak var lblAboutBold: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var lblDisclaimer: UILabel!
    @IBOutlet weak var viewSepBottom: UIView!
    @IBOutlet weak var lblGetStarted: UILabel!
    @IBOutlet weak var btnStart: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Text Color
        lblWelcome.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblTo.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCartdio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblAboutBold
            .textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblDesc
            .textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblDisclaimer
            .textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblGetStarted
            .textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        lblCartdio.attributedText = NSAttributedString(string: "ARDIO",attributes:[ NSAttributedString.Key.kern: 1.3])
        lblTracker.attributedText = NSAttributedString(string: "RACKER",attributes:[ NSAttributedString.Key.kern: 1.2])
        
        
        //MARK: Button
        btnStart.layer.cornerRadius = 15
        btnStart.clipsToBounds = true
        btnStart.backgroundColor = UIColor(red: 190/255, green: 8/255, blue: 8/255, alpha: 1)
    }
    
    @IBAction func btnStartedClicked(_ sender: UIButton){
    }
    
    
}

