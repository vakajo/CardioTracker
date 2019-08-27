
//  RiskDataManager.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 08/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//
import Foundation
import UIKit
import HealthKit

enum Gender: String {
    case male = "Male"
    case female = "Female"
}

enum Ethnicity: Int {
    case white = 0
    case indian = 1
    case pakistani = 2
    case bangladeshi = 3
    case otherAsian = 4
    case blackCaribbean = 5
    case blackAfrican = 6
    case chinese = 7
    case other = 8
}

enum SmokingStatus: Int {
    case nonSmoker = 0
    case exSmoker = 1
    case lightSmoker = 2
    case moderateSmoker = 3
    case heavySmoker = 4
}

enum DiabetesStatus: String {
    case healthy = "Healthy"
    case type1 = "Type 1"
    case type2 = "Type 2"
}

enum UnknownCholesterolHDL {
    case high
    case average
    case low
}

enum UnknownSystolicBloodPressure {
    case high
    case average
    case low
}



final class RiskDataManager {
    
    private init() {   }
    static let shared = RiskDataManager()
    
    private let userHealthProfile = UserHealthProfile()
    let healthStore = HKHealthStore()
    
    // Initialisation
    
    // Risk Array - User Defaults & Graph
    var riskArr: [Double] = []
    var dateArr: [String] = []
    
    //HealthKit Variables
    var vo2max: Double = 0.0
    
    // Personal Information:
    var computedRisk = 0.0
    var gender = Gender.male
    var dateOfBirth = Date()
    var age: Double = 0
    var ethnicity = Ethnicity.white
    
    // Conditions:
    var chronicKidneyDisease: Bool = false
    var atrialFibrillation: Bool = false
    var migraines: Bool = false
    var rheumatoidArthritis: Bool = false
    var systemicLupusErythematosus: Bool = false
    var severeMentalIllness: Bool = false
    var erectileDysfunction: Bool = false
    var noConditions: Bool = false
    
    // Medications:
    var bloodPressureTreatment: Bool = false
    var atypicalAntipsychoticMedication: Bool = false
    var regularSteroidTablets: Bool = false
    var noMedications: Bool = false
    
    // Clinical information:
    var smokingStatus = SmokingStatus.nonSmoker
    var diabetesStatus = DiabetesStatus.healthy
    var familyHistory: Bool = false
    var cholesterolHDL: Double = 0
    var estimatedCholesterolHDLRatio: Double = 0
    var systolicBloodPressure: Double = 0
    var estimatedSystolicBP: Double = 0
    
    var height: Double = 0
    var weight: Double = 0 {
        didSet {

            if RiskDataManager.shared.gender == .male {
                computedRisk = computeMaleRisk()
            }
            else if RiskDataManager.shared.gender == .female {
                computedRisk = computeFemaleRisk()
            } else {
                return
            }
            
        }
    }
    
    
    //MARK: enum Methods
    static func getEthnicityFrom(strEthnicity: String) -> Ethnicity {
        
        if strEthnicity == "White" {
            return .white
        } else if strEthnicity == "Indian" {
            return .indian
        } else if strEthnicity == "Pakistani" {
            return .pakistani
        } else if strEthnicity == "Bangladeshi" {
            return .bangladeshi
        } else if strEthnicity == "Other Asian" {
            return .otherAsian
        } else if strEthnicity == "Black Caribbean" {
            return .blackCaribbean
        } else if strEthnicity == "Black African" {
            return .blackAfrican
        } else if strEthnicity == "Chinese" {
            return .chinese
        } else if strEthnicity == "Other" {
            return .other
        }
        
        return .white
    }
    
    static func getSmokingStatusFrom(strSmoking: String) -> SmokingStatus {
        
        if strSmoking == "Non-Smoker" {
            return .nonSmoker
        } else if strSmoking == "Ex-Smoker" {
            return .exSmoker
        } else if strSmoking == "Light Smoker (Under 10 pr day)" {
            return .lightSmoker
        } else if strSmoking == "Moderate Smoker (10-19 pr day)" {
            return .moderateSmoker
        } else if strSmoking == "Heavy Smoker (Over 20 pr day)" {
            return .heavySmoker
        }
        
        return .nonSmoker
    }
    
    static func getDiabetesStatusFrom(strDiabetes: String) -> DiabetesStatus {
        
        if strDiabetes == "I do not have Diabetes" {
            return .healthy
        } else if strDiabetes == "I have Type 1 Diabetes" {
            return .type1
        } else if strDiabetes == "I have Type 2 Diabetes" {
            return .type2
        }
        
        return .healthy
    }

    //MARK: Calculate age from date of birth
    
    func calculateAndStoreAge() {
        
        let gregorian = Calendar(identifier: .gregorian)
        let ageComponents = gregorian.dateComponents([.year], from: dateOfBirth, to: Date())
        let age = ageComponents.year!
        
        RiskDataManager.shared.age = Double(age)
    }
    
    
    //MARK: Load VO2max
    func loadMostRecentVo2maxData() {
        
        //1. Use HealthKit to create the Sample Types
        guard let vo2maxSampleType = HKSampleType.quantityType(forIdentifier: .vo2Max) else {
            print("VO2 Max Sample Type is no longer available in HealthKit")
            return
        }
        
        //2. Get Most Recent Input for VO2 Max
        ProfileDataStore.getMostRecentSample(for: vo2maxSampleType) {
            
            (sample, error) in
            
            guard let sample = sample else {
                
                if let error = error {
                    self.displayAlert(for: error)
                }
                return
            }
            
            //3. Update variables
            self.userHealthProfile.vo2max = sample.quantity.doubleValue(for: HKUnit(from: "ml/kg*min"))
            self.vo2max = self.userHealthProfile.vo2max
            self.computeEstimatedCholesterolHDLRatio(vo2max: self.userHealthProfile.vo2max)
            self.computeEstimatedSystolicBloodPressure(vo2max: self.userHealthProfile.vo2max)
        }
    }
    
    //MARK: Compute Estimated Cholesterol & Blood Pressure
    func computeEstimatedCholesterolHDLRatio(vo2max: Double) {
        
        print("Er að reikna cholesterol")
        
        if userHealthProfile.vo2max != 0 {
            if RiskDataManager.shared.gender == .male {
                if RiskDataManager.shared.age < 30 {
                    estimatedCholesterolHDLRatio = -0.0553 * userHealthProfile.vo2max + 6.90
                } else if RiskDataManager.shared.age < 40 {
                    estimatedCholesterolHDLRatio = -0.0553 * userHealthProfile.vo2max + 6.82
                } else if RiskDataManager.shared.age < 50 {
                    estimatedCholesterolHDLRatio = -0.0558 * userHealthProfile.vo2max + 6.74
                } else if RiskDataManager.shared.age < 60 {
                    estimatedCholesterolHDLRatio = -0.0578 * userHealthProfile.vo2max + 6.64
                } else if RiskDataManager.shared.age < 70 {
                    estimatedCholesterolHDLRatio = -0.0579 * userHealthProfile.vo2max + 6.45
                } else {
                    estimatedCholesterolHDLRatio = -0.0554 * userHealthProfile.vo2max + 6.21
                }
            } else if RiskDataManager.shared.gender == .female {
                if RiskDataManager.shared.age < 30 {
                    estimatedCholesterolHDLRatio = -0.0282 * userHealthProfile.vo2max + 4.59
                } else if RiskDataManager.shared.age < 40 {
                    estimatedCholesterolHDLRatio = -0.0284 * userHealthProfile.vo2max + 4.55
                } else if RiskDataManager.shared.age < 50 {
                    estimatedCholesterolHDLRatio = -0.0308 * userHealthProfile.vo2max + 4.59
                } else if RiskDataManager.shared.age < 60 {
                    estimatedCholesterolHDLRatio = -0.0342 * userHealthProfile.vo2max + 4.60
                } else if RiskDataManager.shared.age < 70 {
                    estimatedCholesterolHDLRatio = -0.05362 * userHealthProfile.vo2max + 4.57
                } else {
                    estimatedCholesterolHDLRatio = -0.0363 * userHealthProfile.vo2max + 4.51
                }
            }
            else {
                return
            }
            
            RiskDataManager.shared.estimatedCholesterolHDLRatio = estimatedCholesterolHDLRatio
            print("Estimated CholesterolHDL from RiskDataManager: \(RiskDataManager.shared.estimatedCholesterolHDLRatio)")
            //updateLabelsEstimatedCholesterolHDL(newRatio: estimatedCholesterolHDLRatio)
        }
    }
    
    
    func computeEstimatedSystolicBloodPressure(vo2max: Double) {
        
        if userHealthProfile.vo2max != 0 {
            if RiskDataManager.shared.gender == .male {
                
                if RiskDataManager.shared.age < 30 {
                    estimatedSystolicBP = -0.729058848 * userHealthProfile.vo2max + 157.35281
                } else if RiskDataManager.shared.age < 40 {
                    estimatedSystolicBP = -0.73225255 * userHealthProfile.vo2max + 156.47084
                } else if RiskDataManager.shared.age < 50 {
                    estimatedSystolicBP = -0.736210478 * userHealthProfile.vo2max + 155.29302
                } else if RiskDataManager.shared.age < 60 {
                    estimatedSystolicBP = -0.758369813 * userHealthProfile.vo2max + 153.8639
                } else if RiskDataManager.shared.age < 70 {
                    estimatedSystolicBP = -0.761476778 * userHealthProfile.vo2max + 151.41988
                } else {
                    estimatedSystolicBP = -0.724048623 * userHealthProfile.vo2max + 148.0655
                }
            } else if RiskDataManager.shared.gender == .female {
                
                if RiskDataManager.shared.age < 30 {
                    estimatedSystolicBP = -0.658822159 * userHealthProfile.vo2max + 140.66112
                } else if RiskDataManager.shared.age < 40 {
                    estimatedSystolicBP = -0.668375755 * userHealthProfile.vo2max + 139.897
                } else if RiskDataManager.shared.age < 50 {
                    estimatedSystolicBP = -0.722122387 * userHealthProfile.vo2max + 140.64738
                } else if RiskDataManager.shared.age < 60 {
                    estimatedSystolicBP = -0.803249362 * userHealthProfile.vo2max + 140.95834
                } else if RiskDataManager.shared.age < 70 {
                    estimatedSystolicBP = -0.854672208 * userHealthProfile.vo2max + 140.31254
                } else {
                    estimatedSystolicBP = -0.857142857 * userHealthProfile.vo2max + 139.07143
                }
            } else {
                return
            }
            
            RiskDataManager.shared.estimatedSystolicBP = estimatedSystolicBP
            print("Estimated SBP from RiskDataManager: \(RiskDataManager.shared.estimatedSystolicBP)")
            //updateLabelsEstimatedSystolicBP(newSbp: estimatedSystolicBP)
        }
    }
    
    private func displayAlert(for error: Error) {
        
        let alert = UIAlertController(title: nil,
                                      message: error.localizedDescription,
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "O.K.",
                                      style: .default,
                                      handler: nil))
        
        CalculatedRiskViewController().present(alert, animated: true, completion: nil)
    }
    
    
    
    
    //MARK: Compute Risk Methods
    func computeFemaleRisk() -> Double {
        
        let pressure = HKQuantityType.quantityType(forIdentifier: .bloodPressureSystolic)!
        let statusPressure = HKHealthStore().authorizationStatus(for: pressure)
        
        if statusPressure == .sharingAuthorized {
            RiskDataManager.shared.loadMostRecentVo2maxData() // Þetta ætti að setja estimatedCholesterolHDLRatio og estimatedSystolicBloodPressure en gerir það ekki!
        }
        
        // Calculation of BMI Index
        let dblWeight = RiskDataManager.shared.weight
        let dblHeight = RiskDataManager.shared.height/100
        let bmiIndex = dblWeight / (pow(dblHeight,2))
        
        // Declaration of variables
        
        var dblCholesterolHDLRatio = RiskDataManager.shared.cholesterolHDL
        if RiskDataManager.shared.estimatedCholesterolHDLRatio != 0 {
            dblCholesterolHDLRatio = RiskDataManager.shared.estimatedCholesterolHDLRatio
        }
        
        
        var dblSystolicBloodPressure = RiskDataManager.shared.systolicBloodPressure
        if RiskDataManager.shared.estimatedSystolicBP != 0 {
            dblSystolicBloodPressure = RiskDataManager.shared.estimatedSystolicBP
        }
        print("Systolic Blood pressure notaður er: \(dblSystolicBloodPressure)")
        
        let ethnicityCategory = RiskDataManager.shared.ethnicity.rawValue
        let smokingCategory = RiskDataManager.shared.smokingStatus.rawValue
        var diabetesType1: Double = 0
        var diabetesType2: Double = 0
        
        if RiskDataManager.shared.diabetesStatus == .type1 {
            diabetesType1 = 1
        } else if RiskDataManager.shared.diabetesStatus == .type2 {
            diabetesType2 = 1
        }
        
        var sbps5 = 8.9 // We assume this fixed number, taken from an United Arab Emirates Study
        var town: Double = 0
        
        if ethnicityCategory == 0 {
            town = -0.65
        } else if ethnicityCategory == 1 {
            town = 1.06
        } else if ethnicityCategory == 2 {
            town = 2.58
        } else if ethnicityCategory == 3 {
            town = 5.77
        } else if ethnicityCategory == 4 {
            town = 2.09
        } else if ethnicityCategory == 5 {
            town = 3.66
        } else if ethnicityCategory == 6 {
            town = 4.19
        } else if ethnicityCategory == 7 {
            town = 1.95
        } else if ethnicityCategory == 8 {
            town = 2.80
        }
        
        //MARK: QRISK3
        // Conditional Arrays
        var ethnicityRisk: [Double] = [0,
                                       0.2804031433299542500000000,
                                       0.5629899414207539800000000,
                                       0.2959000085111651600000000,
                                       0.0727853798779825450000000,
                                       -0.1707213550885731700000000,
                                       -0.3937104331487497100000000,
                                       -0.3263249528353027200000000,
                                       -0.1712705688324178400000000]
        
        var smokingRisk: [Double] = [0,
                                     0.1338683378654626200000000,
                                     0.5620085801243853700000000,
                                     0.6674959337750254700000000,
                                     0.8494817764483084700000000]
        
        // Applying fractional polynomial transforms
        // Includes Scaling
        let dblAge = RiskDataManager.shared.age/10
        var age_1 = pow(dblAge,-2)
        var age_2 = dblAge
        let dBmi = bmiIndex/10
        var bmi_1 = pow(dBmi,-2)
        var bmi_2 = pow(dBmi,-2) * log(dBmi)
        
        // Centering the continuous variables
        age_1 = age_1 - 0.053274843841791
        age_2 = age_2 - 4.332503318786621
        bmi_1 = bmi_1 - 0.154946178197861
        bmi_2 = bmi_2 - 0.144462317228317
        dblCholesterolHDLRatio = dblCholesterolHDLRatio - 3.476326465606690
        dblSystolicBloodPressure = dblSystolicBloodPressure - 123.130012512207030
        town = town - 0.392308831214905
        sbps5 = sbps5 - 9.002537727355957
        
        // Start of Sum
        var sum: Double = 0
        
        // The conditional sums
        sum += ethnicityRisk[ethnicityCategory]
        sum += smokingRisk[smokingCategory]
        
        // Sum from continuous values
        sum += age_1 * -8.1388109247726188000000000
        sum += age_2 * 0.7973337668969909800000000
        sum += bmi_1 * 0.2923609227546005200000000
        sum += bmi_2 * -4.1513300213837665000000000
        sum += dblCholesterolHDLRatio * 0.1533803582080255400000000
        sum += dblSystolicBloodPressure * 0.0131314884071034240000000
        sum += sbps5 * 0.0078894541014586095000000
        sum += town * 0.0772237905885901080000000
        
        // Sum for boolean values
        sum += atrialFibrillation.doubleValue * 1.5923354969269663000000000
        sum += migraines.doubleValue * 0.3012672608703450000000000
        sum += rheumatoidArthritis.doubleValue * 0.2136480343518194200000000
        sum += chronicKidneyDisease.doubleValue * 0.6519456949384583300000000
        sum += severeMentalIllness.doubleValue * 0.1255530805882017800000000
        sum += systemicLupusErythematosus.doubleValue * 0.7588093865426769300000000
        
        sum += atypicalAntipsychoticMedication.doubleValue * 0.2523764207011555700000000
        sum += regularSteroidTablets.doubleValue * 0.5952072530460185100000000
        sum += bloodPressureTreatment.doubleValue * 0.5093159368342300400000000
        
        sum += diabetesType1 * 1.7267977510537347000000000
        sum += diabetesType2 * 1.0688773244615468000000000
        
        sum += familyHistory.doubleValue * 0.4544531902089621300000000
        
        // Sum from interaction terms
        sum += age_1 * (smokingCategory == 1).doubleValue * -4.7057161785851891000000000
        sum += age_1 * (smokingCategory == 2).doubleValue * -2.7430383403573337000000000
        sum += age_1 * (smokingCategory == 3).doubleValue * -0.8660808882939218200000000
        sum += age_1 * (smokingCategory == 4).doubleValue * 0.9024156236971064800000000
        sum += age_1 * atrialFibrillation.doubleValue * 19.9380348895465610000000000
        sum += age_1 * regularSteroidTablets.doubleValue * -0.984080452359362810000000
        sum += age_1 * migraines.doubleValue * 1.7634979587872999000000000
        sum += age_1 * chronicKidneyDisease.doubleValue * -3.5874047731694114000000000
        sum += age_1 * systemicLupusErythematosus.doubleValue * 19.6903037386382920000000000
        sum += age_1 * bloodPressureTreatment.doubleValue * 11.8728097339218120000000000
        sum += age_1 * diabetesType1 * -1.2444332714320747000000000
        sum += age_1 * diabetesType2 * 6.8652342000009599000000000
        sum += age_1 * bmi_1 * 23.8026234121417420000000000
        sum += age_1 * bmi_2 * -71.1849476920870070000000000
        sum += age_1 * familyHistory.doubleValue * 0.9946780794043512700000000
        sum += age_1 * dblSystolicBloodPressure * 0.0341318423386154850000000
        sum += age_1 * town * -1.0301180802035639000000000
        
        sum += age_2 * (smokingCategory == 1).doubleValue * -0.0755892446431930260000000
        sum += age_2 * (smokingCategory == 2).doubleValue * -0.1195119287486707400000000
        sum += age_2 * (smokingCategory == 3).doubleValue * -0.1036630639757192300000000
        sum += age_2 * (smokingCategory == 4).doubleValue * -0.1399185359171838900000000
        sum += age_2 * atrialFibrillation.doubleValue * -0.0761826510111625050000000
        sum += age_2 * regularSteroidTablets.doubleValue * -0.1200536494674247200000000
        sum += age_2 * migraines.doubleValue * -0.0655869178986998590000000
        sum += age_2 * chronicKidneyDisease.doubleValue * -0.2268887308644250700000000
        sum += age_2 * systemicLupusErythematosus.doubleValue * 0.0773479496790162730000000
        sum += age_2 * bloodPressureTreatment.doubleValue * 0.0009685782358817443600000
        sum += age_2 * diabetesType1 * -0.2872406462448894900000000
        sum += age_2 * diabetesType2 * -0.0971122525906954890000000
        sum += age_2 * bmi_1 * 0.5236995893366442900000000
        sum += age_2 * bmi_2 * 0.0457441901223237590000000
        sum += age_2 * familyHistory.doubleValue * -0.0768850516984230380000000
        sum += age_2 * dblSystolicBloodPressure * -0.0015082501423272358000000
        sum += age_2 * town * -0.0315934146749623290000000
        
        // Calculate the score itself
        let riskScore: Double = 100.0 * (1 - pow(0.988876402378082, exp(sum)))
        return riskScore
    }
    
    
    func computeMaleRisk() -> Double {
        
        // Calculation of BMI Index
        let dblWeight = RiskDataManager.shared.weight
        let dblHeight = RiskDataManager.shared.height/100
        let bmiIndex = dblWeight / (pow(dblHeight,2))
        
        // Declaration of variables
        var dblCholesterolHDLRatio = RiskDataManager.shared.cholesterolHDL
        var dblSystolicBloodPressure = RiskDataManager.shared.systolicBloodPressure
        let ethnicityCategory = RiskDataManager.shared.ethnicity.rawValue
        let smokingCategory = RiskDataManager.shared.smokingStatus.rawValue
        var diabetesType1: Double = 0
        var diabetesType2: Double = 0
        
        if RiskDataManager.shared.diabetesStatus == .type1 {
            diabetesType1 = 1
        } else if RiskDataManager.shared.diabetesStatus == .type2 {
            diabetesType2 = 1
        }
        
        var sbps5 = 10.8 // We assume this fixed number, taken from an United Arab Emirates Study
        var town: Double = 0
        
        if ethnicityCategory == 0 {
            town = -0.5
        } else if ethnicityCategory == 1 {
            town = 1.1
        } else if ethnicityCategory == 2 {
            town = 2.6
        } else if ethnicityCategory == 3 {
            town = 5.5
        } else if ethnicityCategory == 4 {
            town = 2.2
        } else if ethnicityCategory == 5 {
            town = 3.7
        } else if ethnicityCategory == 6 {
            town = 4.3
        } else if ethnicityCategory == 7 {
            town = 2.5
        } else if ethnicityCategory == 8 {
            town = 3.0
        }
        
        //MARK: QRISK3
        // Conditional Arrays
        var ethnicityRisk: [Double] = [0,
                                       0.2771924876030827900000000,
                                       0.4744636071493126800000000,
                                       0.5296172991968937100000000,
                                       0.0351001591862990170000000,
                                       -0.3580789966932791900000000,
                                       -0.4005648523216514000000000,
                                       -0.4152279288983017300000000,
                                       -0.2632134813474996700000000]
        
        var smokingRisk: [Double] = [0,
                                     0.1912822286338898300000000,
                                     0.5524158819264555200000000,
                                     0.6383505302750607200000000,
                                     0.7898381988185801900000000]
        
        // Applying fractional polynomial transforms
        // Includes Scaling
        let dblAge = RiskDataManager.shared.age/10
        var age_1 = pow(dblAge,-1)
        var age_2 = pow(dblAge,3)
        let dBmi = bmiIndex/10.0
        var bmi_1 = pow(dBmi,-2)
        var bmi_2 = pow(dBmi,-2) * log(dBmi)
        
        // Centering the continuous variables
        age_1 = age_1 - 0.234766781330109
        age_2 = age_2 - 77.284080505371094
        bmi_1 = bmi_1 - 0.149176135659218
        bmi_2 = bmi_2 - 0.141913309693336
        dblCholesterolHDLRatio = dblCholesterolHDLRatio - 4.300998687744141
        dblSystolicBloodPressure = dblSystolicBloodPressure - 128.571578979492190
        sbps5 = sbps5 - 8.756621360778809
        town = town - 0.526304900646210
        
        
        // Start of Sum
        var sum: Double = 0
        
        // The conditional sums
        sum += ethnicityRisk[ethnicityCategory]
        sum += smokingRisk[smokingCategory]
        
        // Sum from continuous values
        sum += age_1 * -17.8397816660055750000000000
        sum += age_2 * 0.0022964880605765492000000
        sum += bmi_1 * 2.4562776660536358000000000
        sum += bmi_2 * -8.3011122314711354000000000
        sum += dblCholesterolHDLRatio * 0.1734019685632711100000000
        sum += dblSystolicBloodPressure * 0.0129101265425533050000000
        sum += sbps5 * 0.0102519142912904560000000
        sum += town * 0.0332682012772872950000000
        
        // Sum for boolean values
        sum += atrialFibrillation.doubleValue * 0.8820923692805465700000000
        sum += migraines.doubleValue * 0.2558417807415991300000000
        sum += rheumatoidArthritis.doubleValue * 0.2097065801395656700000000
        sum += chronicKidneyDisease.doubleValue * 0.7185326128827438400000000
        sum += severeMentalIllness.doubleValue * 0.1213303988204716400000000
        sum += systemicLupusErythematosus.doubleValue * 0.4401572174457522000000000
        
        sum += atypicalAntipsychoticMedication.doubleValue * 0.1304687985517351300000000
        sum += regularSteroidTablets.doubleValue * 0.4548539975044554300000000
        sum += bloodPressureTreatment.doubleValue * 0.5165987108269547400000000
        sum += erectileDysfunction.doubleValue * 0.2225185908670538300000000
        
        sum += diabetesType1 * 1.2343425521675175000000000
        sum += diabetesType2 * 0.8594207143093222100000000
        
        sum += familyHistory.doubleValue * 0.5405546900939015600000000
        
        // Sum from interaction terms
        sum += age_1 * (smokingCategory == 1).doubleValue * -0.2101113393351634600000000
        sum += age_1 * (smokingCategory == 2).doubleValue * 0.7526867644750319100000000
        sum += age_1 * (smokingCategory == 3).doubleValue * 0.9931588755640579100000000
        sum += age_1 * (smokingCategory == 4).doubleValue * 2.1331163414389076000000000
        sum += age_1 * atrialFibrillation.doubleValue * 3.4896675530623207000000000
        sum += age_1 * regularSteroidTablets.doubleValue * 1.1708133653489108000000000
        sum += age_1 * erectileDysfunction.doubleValue * -1.5064009857454310000000000
        sum += age_1 * migraines.doubleValue * 2.3491159871402441000000000
        sum += age_1 * chronicKidneyDisease.doubleValue * -0.5065671632722369400000000
        sum += age_1 * bloodPressureTreatment.doubleValue * 6.5114581098532671000000000
        sum += age_1 * diabetesType1 * 5.3379864878006531000000000
        sum += age_1 * diabetesType2 * 3.6461817406221311000000000
        sum += age_1 * bmi_1 * 31.0049529560338860000000000
        sum += age_1 * bmi_2 * -111.2915718439164300000000000
        sum += age_1 * familyHistory.doubleValue * 2.7808628508531887000000000
        sum += age_1 * dblSystolicBloodPressure * 0.0188585244698658530000000
        //sum += age_1 * town * -0.1007554870063731000000000
        
        sum += age_2 * (smokingCategory == 1).doubleValue * -0.0004985487027532612100000
        sum += age_2 * (smokingCategory == 2).doubleValue * -0.0007987563331738541400000
        sum += age_2 * (smokingCategory == 3).doubleValue * -0.0008370618426625129600000
        sum += age_2 * (smokingCategory == 4).doubleValue * -0.0007840031915563728900000
        sum += age_2 * atrialFibrillation.doubleValue * -0.0003499560834063604900000
        sum += age_2 * regularSteroidTablets.doubleValue * -0.0002496045095297166000000
        sum += age_2 * erectileDysfunction.doubleValue * -0.0011058218441227373000000
        sum += age_2 * migraines.doubleValue * 0.0001989644604147863100000
        sum += age_2 * chronicKidneyDisease.doubleValue * -0.0018325930166498813000000
        sum += age_2 * bloodPressureTreatment.doubleValue * 0.0006383805310416501300000
        sum += age_2 * diabetesType1 * 0.0006409780808752897000000
        sum += age_2 * diabetesType2 * -0.000246956955888683150000
        sum += age_2 * bmi_1 * 0.0050380102356322029000000
        sum += age_2 * bmi_2 * -0.0130744830025243190000000
        sum += age_2 * familyHistory.doubleValue * -0.0002479180990739603700000
        sum += age_2 * dblSystolicBloodPressure * -0.0000127187419158845700000
        sum += age_2 * town * -0.0000932996423232728880000
        
        // Calculate the score itself
        let riskScore: Double = 100.0 * (1 - pow(0.977268040180206, exp(sum)))
        return riskScore
    }
}

extension Bool {
    var doubleValue: Double {
        return self ? 1 : 0
    }
}




