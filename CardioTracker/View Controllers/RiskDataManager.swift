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

enum FamHistory {
    case yes
    case no
}

enum Conditions {
    case chronicKidneyDisease
    case atrialFibrillation
    case migraines
    case rheumatoidArthritis
    case systemicLupusErythematosus
    case severeMentalIllness
    case none
}

enum Medications {
    case bloodPressureTreatment
    case atypicalAntipsychoticMedication
    case regularSteroidTablets
    case none
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



final class RiskDataManager{
    
    private init() {}
    
    static let shared = RiskDataManager()
    
    var gender = Gender.male
    var age: String = ""
    var ethnicity = Ethnicity.white
    var smokingStatus = SmokingStatus.nonSmoker
    var diabetesStatus = DiabetesStatus.healthy
    var familyHistory: Bool = false
    var conditions = Conditions.none
    
    
    var cholesterolHDL: String = ""
    var systolicBloodPressure: String = ""
    var height: String = ""
    var weight: String = ""
    
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
    
    
}




