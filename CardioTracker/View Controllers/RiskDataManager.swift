//
//  RiskDataManager.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 08/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import Foundation

final class RiskDataManager{
    
    private init() {}
    
    static let shared = RiskDataManager()
    
    enum Gender {
        case male
        case female
    }
    
    var age: String = ""
    
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
    
    var cholesterolHDL: String = ""
    
    enum UnknownCholesterolHDL {
        case high
        case average
        case low
    }
    
    var systolicBloodPressure: String = ""
    
    enum UnknownSystolicBloodPressure {
        case high
        case average
        case low
    }
    
    var height: String = ""
    
    var weight: String = ""

}
