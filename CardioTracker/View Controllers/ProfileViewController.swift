//
//  ProfileViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 19/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit
import HealthKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    @IBOutlet weak var lblPersonalInformation: UILabel!
    @IBOutlet weak var viewGender: UIView!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblGenderValue: UILabel!
    @IBOutlet weak var viewAge: UIView!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblAgeValue: UILabel!
    @IBOutlet weak var viewEthnicity: UIView!
    @IBOutlet weak var lblEthnicity: UILabel!
    @IBOutlet weak var lblEthnicityValue: UILabel!
    @IBOutlet weak var lblClinicalInformation: UILabel!
    @IBOutlet weak var viewSmokingStatus: UIView!
    @IBOutlet weak var lblSmokingStatus: UILabel!
    @IBOutlet weak var lblSmokingStatusValue: UILabel!
    @IBOutlet weak var viewDiabetesStatus: UIView!
    @IBOutlet weak var lblDiabetesStatus: UILabel!
    @IBOutlet weak var lblDiabetesStatusValue: UILabel!
    @IBOutlet weak var viewFamHistory: UIView!
    @IBOutlet weak var lblFamHistory: UILabel!
    @IBOutlet weak var lblFamHistoryValue: UILabel!
    @IBOutlet weak var viewEstimatedCholestrolHDL: UIView!
    @IBOutlet weak var lblEstimatedCholesterolHDL: UILabel!
    @IBOutlet weak var lblEstimatedCholesterolHDLValue: UILabel!
    @IBOutlet weak var viewEstimatedSystolicBP: UIView!
    @IBOutlet weak var lblEstimatedSystolicBP: UILabel!
    @IBOutlet weak var lblEstimatedSystolicBPValue: UILabel!
    @IBOutlet weak var viewBMI: UIView!
    @IBOutlet weak var lblBMI: UILabel!
    @IBOutlet weak var lblBMIValue: UILabel!
    @IBOutlet weak var lblConditions: UILabel!
    @IBOutlet weak var viewKidney: UIView!
    @IBOutlet weak var lblKidney: UILabel!
    @IBOutlet weak var lblKidneyValue: UILabel!
    @IBOutlet weak var viewFibrillation: UIView!
    @IBOutlet weak var lblFibrillation: UILabel!
    @IBOutlet weak var lblFibrillationValue: UILabel!
    @IBOutlet weak var viewMigraines: UIView!
    @IBOutlet weak var lblMigraines: UILabel!
    @IBOutlet weak var lblMigrainesValue: UILabel!
    @IBOutlet weak var viewArthritis: UIView!
    @IBOutlet weak var lblArthritis: UILabel!
    @IBOutlet weak var lblArthritisValue: UILabel!
    @IBOutlet weak var viewSLE: UIView!
    @IBOutlet weak var lblSLE: UILabel!
    @IBOutlet weak var lblSLEValue: UILabel!
    @IBOutlet weak var viewMentalIllness: UIView!
    @IBOutlet weak var lblMentalIllness: UILabel!
    @IBOutlet weak var lblMentalIllnessValue: UILabel!
    @IBOutlet weak var lblMedications: UILabel!
    @IBOutlet weak var viewBPTreatment: UIView!
    @IBOutlet weak var lblBPTreatment: UILabel!
    @IBOutlet weak var lblBPTreatmentValue: UILabel!
    @IBOutlet weak var viewAntypsychotic: UIView!
    @IBOutlet weak var lblAntipsychotic: UILabel!
    @IBOutlet weak var lblAntipsychoticValue: UILabel!
    @IBOutlet weak var viewSteroids: UIView!
    @IBOutlet weak var lblSteroids: UILabel!
    @IBOutlet weak var lblSteroidsValue: UILabel!
    @IBOutlet weak var viewErectile: UIView!
    @IBOutlet weak var lblErectile: UILabel!
    @IBOutlet weak var lblErectileValue: UILabel!
    @IBOutlet weak var lblHealthKitData: UILabel!
//    @IBOutlet weak var viewExercise: UIView!
//    @IBOutlet weak var lblExercise: UILabel!
//    @IBOutlet weak var lblExerciseValue: UILabel!
    @IBOutlet weak var viewVo2max: UIView!
    @IBOutlet weak var lblVo2max: UILabel!
    @IBOutlet weak var lblVo2maxValue: UILabel!
    @IBOutlet weak var viewEstimatedRisk: UIView!
    @IBOutlet weak var lblEstimatedRisk: UILabel!
    @IBOutlet weak var lblEstimatedRiskValue: UILabel!
    @IBOutlet weak var constraintMedications: NSLayoutConstraint!
    

    private let userHealthProfile = UserHealthProfile()
    let healthStore = HKHealthStore()
    let exerciseType = HKSampleType.quantityType(forIdentifier: .appleExerciseTime)
    
    var estimatedCholesterolHDLRatio: Double = 0
    var estimatedSystolicBP: Double = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Profile"
        
        if RiskDataManager.shared.gender == .female {
            constraintMedications.constant = 30
        }
        
        
        //MARK: Labels Layout
        let lblHeadingsArr = [lblPersonalInformation, lblClinicalInformation, lblConditions, lblMedications, lblHealthKitData, lblC, lblCardio, lblT, lblTracker]
        
        for lbl in lblHeadingsArr {
            lbl?.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        }
        
        lblCardio.attributedText = NSAttributedString(string: "ARDIO",attributes:[ NSAttributedString.Key.kern: 1.3])
        lblTracker.attributedText = NSAttributedString(string: "RACKER",attributes:[ NSAttributedString.Key.kern: 1.2])
        
        let lblArr = [lblGender, lblAge, lblEthnicity, lblSmokingStatus, lblDiabetesStatus, lblFamHistory,  lblEstimatedCholesterolHDL,  lblEstimatedSystolicBP, lblBMI, lblKidney, lblFibrillation, lblMigraines, lblArthritis, lblSLE, lblMentalIllness, lblBPTreatment,  lblAntipsychotic, lblSteroids, lblErectile, lblVo2max, lblEstimatedRisk]
        
        let lblValueArr =  [lblGenderValue, lblAgeValue, lblEthnicityValue, lblSmokingStatusValue, lblDiabetesStatusValue, lblFamHistoryValue,  lblEstimatedCholesterolHDLValue,  lblEstimatedSystolicBPValue, lblBMIValue, lblKidneyValue, lblFibrillationValue, lblMigrainesValue, lblArthritisValue, lblSLEValue, lblMentalIllnessValue, lblBPTreatmentValue, lblAntipsychoticValue, lblSteroidsValue, lblErectileValue, lblVo2maxValue, lblEstimatedRiskValue]
        
        for lbl in lblArr {
            lbl?.textColor = UIColor.darkGray
            lbl?.font = lbl?.font.withSize(15)
            lbl?.text = "  " + lbl!.text!
        }
        
        for lbl in lblValueArr {
            lbl?.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
            lbl?.font = lbl?.font.withSize(15)
        }
        
        let viewArr = [viewGender, viewAge, viewEthnicity, viewSmokingStatus, viewDiabetesStatus, viewFamHistory,  viewEstimatedCholestrolHDL,  viewEstimatedSystolicBP, viewBMI, viewKidney, viewFibrillation, viewMigraines, viewArthritis, viewSLE, viewMentalIllness, viewBPTreatment, viewAntypsychotic, viewSteroids, viewErectile, viewVo2max, viewEstimatedRisk]
        
        for view in viewArr {
            view?.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
            view?.layer.cornerRadius = 5
            view?.clipsToBounds = true
            view?.frame.size.height = 10
        }
        
        //MARK: Label Values
        lblGenderValue.text = RiskDataManager.shared.gender.rawValue
        lblAgeValue.text = String(format: "%.0f", RiskDataManager.shared.age)
        
        if RiskDataManager.shared.ethnicity == .white {
            lblEthnicityValue.text = "White"
        } else if RiskDataManager.shared.ethnicity == .indian {
            lblEthnicityValue.text = "Indian"
        } else if RiskDataManager.shared.ethnicity == .pakistani {
            lblEthnicityValue.text = "Pakistani"
        } else if RiskDataManager.shared.ethnicity == .bangladeshi {
            lblEthnicityValue.text = "Bangladeshi"
        } else if RiskDataManager.shared.ethnicity == .otherAsian {
            lblEthnicityValue.text = "Other Asian"
        } else if RiskDataManager.shared.ethnicity == .blackCaribbean {
            lblEthnicityValue.text = "Black Caribbean"
        } else if RiskDataManager.shared.ethnicity == .blackAfrican {
            lblEthnicityValue.text = "Black African"
        } else if RiskDataManager.shared.ethnicity == .chinese {
            lblEthnicityValue.text = "Chinese"
        } else if RiskDataManager.shared.ethnicity == .other {
            lblEthnicityValue.text = "Other"
        }
        
        if RiskDataManager.shared.smokingStatus == .nonSmoker {
            lblSmokingStatusValue.text = "Non Smoker"
        } else if RiskDataManager.shared.smokingStatus == .exSmoker {
            lblSmokingStatusValue.text = "Ex Smoker"
        } else if RiskDataManager.shared.smokingStatus == .lightSmoker {
            lblSmokingStatusValue.text = "Light smoker"
        } else if RiskDataManager.shared.smokingStatus == .moderateSmoker {
            lblSmokingStatusValue.text = "Moderate Smoker"
        } else if RiskDataManager.shared.smokingStatus == .heavySmoker {
            lblSmokingStatusValue.text = "Heavy smoker"
        }
        
        if RiskDataManager.shared.diabetesStatus == .healthy {
            lblDiabetesStatusValue.text = "No Diabetes"
        } else if RiskDataManager.shared.diabetesStatus == .type1 {
            lblDiabetesStatusValue.text = "Type 1"
        } else if RiskDataManager.shared.diabetesStatus == .type2 {
            lblDiabetesStatusValue.text = "Type 2"
        }
        
        if RiskDataManager.shared.familyHistory == true {
            lblFamHistoryValue.text = "Yes"
        } else {
            lblFamHistoryValue.text = "No"
        }
        
        
        lblEstimatedCholesterolHDLValue.text = String(format: "%.1f", RiskDataManager.shared.estimatedCholesterolHDLRatio)
        lblEstimatedSystolicBPValue.text = String(format: "%.1f", RiskDataManager.shared.estimatedSystolicBP)
        
        if RiskDataManager.shared.gender == .female {
            lblErectile.isHidden = true
            lblErectileValue.isHidden = true
            viewErectile.isHidden = true
        }
        
        let healthKit = HKQuantityType.quantityType(forIdentifier: .bloodPressureSystolic)!
        let status = HKHealthStore().authorizationStatus(for: healthKit)
        
        if status != .sharingAuthorized {
            lblHealthKitData.isHidden = true
//            viewExercise.isHidden = true
//            lblExercise.isHidden = true
//            lblExerciseValue.isHidden = true
            viewVo2max.isHidden = true
            lblVo2max.isHidden = true
            lblVo2maxValue.isHidden = true
            viewEstimatedRisk.isHidden = true
            lblEstimatedRisk.isHidden = true
            lblEstimatedRiskValue.isHidden = true
        }
        
        let dblWeight = RiskDataManager.shared.weight
        let dblHeight = RiskDataManager.shared.height/100
        let bmiIndex = dblWeight / (pow(dblHeight,2))
        
        lblBMIValue.text = String(format: "%.1f", bmiIndex)
        
        if RiskDataManager.shared.chronicKidneyDisease == true {
            lblKidneyValue.text = "Yes"
        } else {
            lblKidneyValue.text = "No"
        }
        
        if RiskDataManager.shared.atrialFibrillation == true {
            lblFibrillationValue.text = "Yes"
        } else {
            lblFibrillationValue.text = "No"
        }
        
        if RiskDataManager.shared.migraines == true {
            lblMigrainesValue.text = "Yes"
        } else {
            lblMigrainesValue.text = "No"
        }
        
        if RiskDataManager.shared.rheumatoidArthritis == true {
            lblArthritisValue.text = "Yes"
        } else {
            lblArthritisValue.text = "No"
        }
        
        if RiskDataManager.shared.systemicLupusErythematosus == true {
            lblSLEValue.text = "Yes"
        } else {
            lblSLEValue.text = "No"
        }
        
        if RiskDataManager.shared.severeMentalIllness == true {
            lblMentalIllnessValue.text = "Yes"
        } else {
            lblMentalIllnessValue.text = "No"
        }
        
        if RiskDataManager.shared.bloodPressureTreatment == true {
            lblBPTreatmentValue.text = "Yes"
        } else {
            lblBPTreatmentValue.text = "No"
        }
        
        if RiskDataManager.shared.atypicalAntipsychoticMedication == true {
            lblAntipsychoticValue.text = "Yes"
        } else {
            lblAntipsychoticValue.text = "No"
        }
        
        if RiskDataManager.shared.regularSteroidTablets == true {
            lblSteroidsValue.text = "Yes"
        } else {
            lblSteroidsValue.text = "No"
        }
        
        if RiskDataManager.shared.erectileDysfunction == true {
            lblErectileValue.text = "Yes"
        } else {
            lblErectileValue.text = "No"
        }
        
        lblVo2maxValue.text = String(format: "%.1f", RiskDataManager.shared.vo2max)
        lblEstimatedRiskValue.text = String(format: "%.1f", RiskDataManager.shared.computedRisk)
        
        //loadAndDisplayExerciseMinutes()
    }
    
   
    //Exercise minutes
//    func loadAndDisplayExerciseMinutes() {
//
//        // 1. Get all samples from the last 24 hrs
//        // GET SAMPLES FROM
//        let endDate = Date()
//        let startDate = endDate.addingTimeInterval(-1.0 * 60.0 * 60.0 * 10.0)
//        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: endDate, options: [])
//
//        // 2. Create the HealthKit Query
//        let query = HKSampleQuery(
//            sampleType: exerciseType!,
//            predicate: predicate,
//            limit: 0,
//            sortDescriptors: [],
//            resultsHandler: updateExerciseTime)
//
//        healthStore.execute(query)
//    }
    
//    func updateExerciseTime(query: HKSampleQuery, results: [HKSample]?, error: Error?) {
//        if error != nil {return}
//
//        let totalExerciseTime = results?.map(calculateTotalTime).reduce(0, { $0 + $1 }) ?? 0
//
//        //renderExerciseMinuteText(totalExerciseSeconds: totalExerciseTime)
//    }
    
//    func calculateTotalTime(sample: HKSample) -> TimeInterval {
//        let totalTime = sample.endDate.timeIntervalSince(sample.startDate)
//        return totalTime
//    }
    
//    func renderExerciseMinuteText(totalExerciseSeconds: Double) {
//        let minutes = Int(totalExerciseSeconds / 60)
//        //let labelText = "\(minutes)"
//        DispatchQueue.main.async {
//            //self.lblExerciseValue.text = labelText
//        }
//    }
    

    private func displayAlert(for error: Error) {

        let alert = UIAlertController(title: nil,
                                      message: error.localizedDescription,
                                      preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "O.K.",
                                      style: .default,
                                      handler: nil))

        present(alert, animated: true, completion: nil)
    }
}

