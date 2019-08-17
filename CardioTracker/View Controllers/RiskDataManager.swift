
//  RiskDataManager.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 08/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//
import Foundation

enum Gender {
    case male
    case female
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

enum DiabetesStatus {
    case healthy
    case type1
    case type2
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
    
    var risk = 0.0
    
    var gender = Gender.male
    var age: Double = 0
    var ethnicity = Ethnicity.white
    var smokingStatus = SmokingStatus.nonSmoker
    var diabetesStatus = DiabetesStatus.healthy
    var familyHistory: Bool = false
    
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
    
    var cholesterolHDL: Double = 0
    var systolicBloodPressure: Double = 0
    var height: Double = 0
    var weight: Double = 0 {
        didSet {
            
            risk = computeFemaleRisk()
            
            //            if RiskDataManager.shared.gender == .male {
            //                computeMaleRisk()
            //            }
            //            else if RiskDataManager.shared.gender == .female {
            //                var finalRisk = computeFemaleRisk()
            //            } else {
            //                return
            //            }
        }
    }
    
    // Computed risk initialised
    var computedRisk = 0.0
    
    //MARK: Methods
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
    
    
    
    //MARK: Compute Risk
    func computeFemaleRisk() -> Double {
        
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
        
        var sbps5 = 8.9 // Er 10.8 hjá karlmönnum
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
        var ethnicityRisk: [Double] = [0, 0, 0.2804031433299542500000000, 0.5629899414207539800000000, 0.2959000085111651600000000, 0.0727853798779825450000000, -0.1707213550885731700000000, -0.3937104331487497100000000, -0.3263249528353027200000000, -0.1712705688324178400000000]
        
        var smokingRisk: [Double] = [0, 0.1338683378654626200000000, 0.5620085801243853700000000, 0.6674959337750254700000000, 0.8494817764483084700000000]
        
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
    
    
    func computeMaleRisk() {
        
        
    }
    
}

extension Bool {
    var doubleValue: Double {
        return self ? 1 : 0
    }
}




