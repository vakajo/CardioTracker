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
    
    
    let defaults = UserDefaults.standard
    
    struct Keys {
        static let gender = "gender"
        static let dateOfBirth = "dateOfBirth"
        static let ethnicity = "ethnicity"
        static let smokingStatus = "smokingStatus"
        static let diabetesStatus = "diabetesStatus"
        static let famHistory = "famHistory"
        static let kidney = "kidney"
        static let atrial = "atrial"
        static let migraines = "migraines"
        static let arthritis = "arthritis"
        static let sle = "sle"
        static let mental = "mental"
        static let erectile = "erectile"
        static let noConditions = "noConditions"
        static let bpTreatment = "bpTreatment"
        static let antiPsychotic = "antiPsychotic"
        static let steroids = "steroids"
        static let noMedications = "noMedications"
        static let height = "height"
        static let weight = "weight"
        static let updatedRisk = "updatedRisk"
        static let updatedDate = "updatedDate"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Profile", style: .plain, target: self, action: #selector(navigateToProfile))


        // Check if HealthKit is authorised and if so, load most recent Vo2Max Value
        let pressure = HKQuantityType.quantityType(forIdentifier: .bloodPressureSystolic)!
        let statusPressure = HKHealthStore().authorizationStatus(for: pressure)
        
        if statusPressure != .sharingAuthorized {
            btnTrack.isHidden = true
            lblConnected.isHidden = true
        }
        
        
        if defaults.string(forKey: Keys.gender) != nil {
            retrieveVariables()
            RiskDataManager.shared.calculateAndStoreAge()
            
            if statusPressure == .sharingAuthorized {
                RiskDataManager.shared.loadMostRecentVo2maxData()
            }
            
            if RiskDataManager.shared.gender == .female {
                RiskDataManager.shared.computedRisk = RiskDataManager.shared.computeFemaleRisk()
            } else if RiskDataManager.shared.gender == .male {
                RiskDataManager.shared.computedRisk = RiskDataManager.shared.computeMaleRisk()
            }
        }
        

        
        let gender = RiskDataManager.shared.gender.rawValue
        let age = RiskDataManager.shared.age
        let ethnicity = RiskDataManager.shared.ethnicity.rawValue
        let smokingStatus = RiskDataManager.shared.smokingStatus
        let diabetesStatus = RiskDataManager.shared.diabetesStatus
        let familyHistory = RiskDataManager.shared.familyHistory
//        let kidney = RiskDataManager.shared.chronicKidneyDisease
//        let atrial = RiskDataManager.shared.atrialFibrillation
//        let migraines = RiskDataManager.shared.migraines
//        let arthritis = RiskDataManager.shared.rheumatoidArthritis
//        let sle = RiskDataManager.shared.systemicLupusErythematosus
//        let mental = RiskDataManager.shared.severeMentalIllness
//        let erectile = RiskDataManager.shared.erectileDysfunction
//        let noConditions = RiskDataManager.shared.noConditions
//        let bpTreatment = RiskDataManager.shared.bloodPressureTreatment
//        let antipsychotic = RiskDataManager.shared.atypicalAntipsychoticMedication
//        let steroids = RiskDataManager.shared.regularSteroidTablets
//        let noMed = RiskDataManager.shared.noMedications
//        let height = RiskDataManager.shared.height
//        let weight = RiskDataManager.shared.weight
        let cholesterol = RiskDataManager.shared.estimatedCholesterolHDLRatio
        let sbp = RiskDataManager.shared.estimatedSystolicBP
        
        print("Gender: \(gender), Age: \(age), Ethnicity: \(ethnicity), Smoking Status: \(smokingStatus.rawValue), Diabetes Status: \(diabetesStatus.rawValue), Family History: \(familyHistory), CholesterolRatio: \(cholesterol), Systolic Blood Pressure: \(sbp)")
        

        
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
        retrieveRiskAndDateArrs()
        RiskDataManager.shared.riskArr.append(risk)
        RiskDataManager.shared.dateArr.append(finalDateString)
        storeRiskAndDateArrs()
        
        let roundedRisk = String(format: "%.1f", risk) + "%"
        
        storeVariables()
        
        
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
        
        
    }
    
    
    
    @IBAction func btnTrackClicked(_ sender: UIButton) {
    }
    
    func storeVariables() {
        defaults.set(RiskDataManager.shared.gender.rawValue, forKey: Keys.gender)
        defaults.set(RiskDataManager.shared.dateOfBirth, forKey: Keys.dateOfBirth)
        defaults.set(RiskDataManager.shared.ethnicity.rawValue, forKey: Keys.ethnicity)
        defaults.set(RiskDataManager.shared.smokingStatus.rawValue, forKey: Keys.smokingStatus)
        defaults.set(RiskDataManager.shared.diabetesStatus.rawValue, forKey: Keys.diabetesStatus)
        defaults.set(RiskDataManager.shared.familyHistory, forKey: Keys.famHistory)
        defaults.set(RiskDataManager.shared.chronicKidneyDisease, forKey: Keys.kidney)
        defaults.set(RiskDataManager.shared.atrialFibrillation, forKey: Keys.atrial)
        defaults.set(RiskDataManager.shared.migraines, forKey: Keys.migraines)
        defaults.set(RiskDataManager.shared.rheumatoidArthritis, forKey: Keys.arthritis)
        defaults.set(RiskDataManager.shared.systemicLupusErythematosus, forKey: Keys.sle)
        defaults.set(RiskDataManager.shared.severeMentalIllness, forKey: Keys.mental)
        defaults.set(RiskDataManager.shared.erectileDysfunction, forKey: Keys.erectile)
        defaults.set(RiskDataManager.shared.noConditions, forKey: Keys.noConditions)
        defaults.set(RiskDataManager.shared.bloodPressureTreatment, forKey: Keys.bpTreatment)
        defaults.set(RiskDataManager.shared.atypicalAntipsychoticMedication, forKey: Keys.antiPsychotic)
        defaults.set(RiskDataManager.shared.regularSteroidTablets, forKey: Keys.steroids)
        defaults.set(RiskDataManager.shared.noMedications, forKey: Keys.noMedications)
        defaults.set(RiskDataManager.shared.height, forKey: Keys.height)
        defaults.set(RiskDataManager.shared.weight, forKey: Keys.weight)
    }
    
    func retrieveVariables() {
        RiskDataManager.shared.gender = Gender(rawValue: defaults.string(forKey: Keys.gender)!)!
        RiskDataManager.shared.dateOfBirth = defaults.object(forKey: Keys.dateOfBirth) as! Date
        RiskDataManager.shared.ethnicity = Ethnicity(rawValue: defaults.integer(forKey: Keys.ethnicity))!
        RiskDataManager.shared.smokingStatus = SmokingStatus(rawValue: defaults.integer(forKey: Keys.smokingStatus))!
        RiskDataManager.shared.diabetesStatus = DiabetesStatus(rawValue: defaults.string(forKey: Keys.diabetesStatus)!)!
        RiskDataManager.shared.familyHistory = defaults.bool(forKey: Keys.famHistory)
        RiskDataManager.shared.chronicKidneyDisease = defaults.bool(forKey: Keys.kidney)
        RiskDataManager.shared.atrialFibrillation = defaults.bool(forKey: Keys.atrial)
        RiskDataManager.shared.migraines = defaults.bool(forKey: Keys.migraines)
        RiskDataManager.shared.rheumatoidArthritis = defaults.bool(forKey: Keys.arthritis)
        RiskDataManager.shared.systemicLupusErythematosus = defaults.bool(forKey: Keys.sle)
        RiskDataManager.shared.severeMentalIllness = defaults.bool(forKey: Keys.mental)
        RiskDataManager.shared.erectileDysfunction = defaults.bool(forKey: Keys.erectile)
        RiskDataManager.shared.noConditions = defaults.bool(forKey: Keys.noConditions)
        RiskDataManager.shared.bloodPressureTreatment = defaults.bool(forKey: Keys.bpTreatment)
        RiskDataManager.shared.atypicalAntipsychoticMedication = defaults.bool(forKey: Keys.antiPsychotic)
        RiskDataManager.shared.regularSteroidTablets = defaults.bool(forKey: Keys.steroids)
        RiskDataManager.shared.noMedications = defaults.bool(forKey: Keys.noMedications)
        RiskDataManager.shared.height = defaults.double(forKey: Keys.height)
        RiskDataManager.shared.weight = defaults.double(forKey: Keys.height)
        
    }
    
    func storeRiskAndDateArrs() {
        defaults.set(RiskDataManager.shared.riskArr, forKey: Keys.updatedRisk)
        defaults.set(RiskDataManager.shared.dateArr, forKey: Keys.updatedDate)
    }
    
    func retrieveRiskAndDateArrs() {
        RiskDataManager.shared.riskArr = defaults.array(forKey: Keys.updatedRisk) as? [Double] ?? [Double]()
        RiskDataManager.shared.dateArr = defaults.array(forKey: Keys.updatedDate) as? [String] ?? [String]()
    }
    
    @objc func navigateToProfile() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        self.navigationController?.pushViewController(newViewController, animated: true)
    }

    
}
