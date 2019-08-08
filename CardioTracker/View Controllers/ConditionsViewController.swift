//
//  ConditionsViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 07/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit

class ConditionsViewController: UIViewController {

    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imgViewHeart: UIImageView!
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    
    @IBOutlet weak var imgViewCircle: UIImageView!
    @IBOutlet weak var lblQuestions: UILabel!
    
    @IBOutlet weak var lblConditions: UILabel!
    @IBOutlet weak var btnKidney: UIButton!
    @IBOutlet weak var btnAtrial: UIButton!
    @IBOutlet weak var btnMigraines: UIButton!
    @IBOutlet weak var btnArthritis: UIButton!
    @IBOutlet weak var btnSLE: UIButton!
    @IBOutlet weak var btnMental: UIButton!
    @IBOutlet weak var btnHealthy: UIButton!
    
    @IBOutlet weak var btnNext: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //MARK: Labels Layout
        lblC.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblCardio.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblT.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblTracker.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        lblConditions.textColor = UIColor(red: 119/255, green: 8/255, blue: 8/255, alpha: 1)
        
        //MARK: Buttons Layout
        let buttons = [btnKidney, btnAtrial, btnMigraines, btnArthritis, btnSLE, btnMental, btnHealthy, btnNext]
        
        for index in buttons {
            index!.layer.cornerRadius = 15
            index!.clipsToBounds = true
            index!.layer.borderWidth = 1
            index!.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
            index!.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        }
        
        btnHealthy!.titleLabel!.numberOfLines = 0
        btnHealthy.titleLabel!.textAlignment = NSTextAlignment.center
    }
    
    //MARK: Button Methods
    func buttonTapped(sender: UIButton) {
        sender.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
        sender.setTitleColor(.white, for: [])
    }
    
    @IBAction func btnSelected(_ sender: AnyObject) {
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            button.backgroundColor = UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)
            button.setTitleColor(.white, for: [])
        }
        else {
            button.isSelected = false
            button.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            button.layer.borderColor = (UIColor(red: 119.0/255.0, green: 8.0/255.0, blue: 8.0/255.0, alpha: 1.0)).cgColor
            button.setTitleColor(UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1), for: [])
        }
    }
    
    @IBAction func btnKidneySel(_ sender: UIButton) {
        btnSelected(btnKidney)
    }
    
    @IBAction func btnAtrialSel(_ sender: UIButton) {
        btnSelected(btnAtrial)
    }
    
    @IBAction func btnMigrainesSel(_ sender: UIButton) {
        btnSelected(btnMigraines)
    }
    
    @IBAction func btnArthritisSel(_ sender: UIButton) {
        btnSelected(btnArthritis)
    }
    
    @IBAction func btnSLESel(_ sender: UIButton) {
        btnSelected(btnSLE)
    }
    
    @IBAction func btnMentalSel(_ sender: UIButton) {
        btnSelected(btnMental)
    }
    
    @IBAction func btnHealthySel(_ sender: UIButton) {
        btnSelected(btnHealthy)
    }
    
    @IBAction func btnNextSelected(_ sender: UIButton) {
        buttonTapped(sender: btnNext)
    }
}
