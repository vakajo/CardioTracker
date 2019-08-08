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
    
    var age: String = ""
    var isMale: Bool = false
    
}
