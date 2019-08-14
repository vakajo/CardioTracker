//
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

enum Ethnicity {
    case white
    case indian
    case pakistani
    case bangladeshi
    case otherAsian
    case blackCaribbean
    case blackAfrican
    case chinese
    case other
}

enum SmokingStatus {
    case nonSmoker
    case exSmoker
    case lightSmoker
    case moderateSmoker
    case heavySmoker
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
    
    var gender = Gender.male
    var age: String = ""
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
    var noConditions: Bool = false

    // Medications:
    var bloodPressureTreatment: Bool = false
    var atypicalAntipsychoticMedication: Bool = false
    var regularSteroidTablets: Bool = false
    var noMedications: Bool = false

    var cholesterolHDL: String = ""
    var systolicBloodPressure: String = ""
    var height: String = ""
    var weight: String = "" {
        didSet {
            computeRisk()
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
    func computeRisk() {
        
        if gender == .male {
            computedRisk += 1.0
            print("Gender: Male")
        }
        
        if gender == .female {
            computedRisk += 1.0
            print("Gender: Female")
        }
        
        if age == "25" {
            computedRisk += 1.0
            print("Age: 25")
        }
        
        if ethnicity == .white {
            computedRisk += 1.0
            print("Ethn.: White")
        }
        
        if smokingStatus == .nonSmoker {
            computedRisk += 1.0
            print("NonSmoker")
        }
        
        if diabetesStatus == .healthy {
            computedRisk += 1.0
            print("NoDiabetes")
        }
        
        if familyHistory == true {
            computedRisk += 1.0
            print("FamilyHistory")
        }
        
        if familyHistory == false {
            computedRisk += 1.0
            print("No Family History")
        }
        
        if noConditions == true {
            computedRisk += 1.0
            print("NoConditions")
        }
        
        if noMedications == true {
            computedRisk += 1.0
            print("NoMedications")
        }
        
        if cholesterolHDL == "4" {
            computedRisk += 1.0
            print("Cholesterol: 4")
        }
        
        if systolicBloodPressure == "120" {
            computedRisk += 1.0
            print("Blood Pressure = 120")
        }
        
        if height == "170" {
            computedRisk += 1.0
            print("Height: 170")
        }
        
        if weight == "70" {
            computedRisk += 1.0
            print("Weight: 70")
        }
        
    }
    
}







