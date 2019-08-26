//
//  DummyViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 24/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit
import HealthKit

class DummyViewController: UIViewController, UINavigationControllerDelegate {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        // Hide Connect Button if Navigated Back
        print("ViewWillAppear")
//        self.navigationController?.delegate = self
//
//        var bmi = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BmiIndexViewController") as! BmiIndexViewController
//
//        self.navigationController?.presentedViewController(bmi, animated: true)
//
//
//

        
        
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let dummyViewController = storyboard.instantiateViewController(withIdentifier: "dummy") as! DummyViewController
//        let bmiViewController = storyboard.instantiateViewController(withIdentifier: "bmi") as! BmiIndexViewController
//        dummyViewController.title = "DUMMY"
//        bmiViewController.title = "BMI"
        
        
//        if RiskDataManager.shared.vo2max == 0 {
//            navigationController?.pushViewController(dummyViewController, animated: true)
//            print("Ekki tengt")
//        } else {
//            navigationController?.pushViewController(bmiViewController, animated: true)
//            print("Tengt")
//        }
    }
    
        
        
        
        
}
