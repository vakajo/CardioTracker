//
//  ViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 31/07/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var lblTo: UILabel!
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imgViewHeart: UIImageView!
    @IBOutlet weak var lblCartdio: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    @IBOutlet weak var viewSepTop: UIView!
    @IBOutlet weak var lblAboutBold: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var viewSepBottom: UIView!
    
    @IBOutlet weak var lblGetStarted: UILabel!
    @IBOutlet weak var btnStart: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblWelcome.text = "Welcome"
        
        
    }


    
}

