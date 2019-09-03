//
//  CardioTrackerTests.swift
//  CardioTrackerTests
//
//  Created by Vaka Jóhannesdóttir on 17/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import XCTest
@testable import CardioTracker

class CardioTrackerTests: XCTestCase {
    
    
    //MARK: FEMALES
    
    //MARK: AGE
    func testFemale25WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith()
        let someKnownValueOfQRiskWithTheseParams = 0.1
        if  risk.computedRisk > 0 {
            

            //If this fails, the test fails.
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.3
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale30WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 30)
        let someKnownValueOfQRiskWithTheseParams = 0.2
        if  risk.computedRisk > 0 {
        
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.3
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale35WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 35)
        
        let someKnownValueOfQRiskWithTheseParams = 0.3
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale40WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 40)
        
        let someKnownValueOfQRiskWithTheseParams = 0.6
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale45WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 45)
        
        let someKnownValueOfQRiskWithTheseParams = 1.0
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50)
        
        let someKnownValueOfQRiskWithTheseParams = 1.6
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale55WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 55)
        
        let someKnownValueOfQRiskWithTheseParams = 2.6
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale60WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 60)
        
        let someKnownValueOfQRiskWithTheseParams = 4.2
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale65WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 65)
        
        let someKnownValueOfQRiskWithTheseParams = 6.5
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale70WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 70)
        
        let someKnownValueOfQRiskWithTheseParams = 10.0
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale75WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 75)
        
        let someKnownValueOfQRiskWithTheseParams = 15.2
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale84WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 84)
        
        let someKnownValueOfQRiskWithTheseParams = 30.6
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    //MARK: ETHNICITY
    func testFemale50IndianNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .indian)
        
        let someKnownValueOfQRiskWithTheseParams = 2.2
        
        if  risk.computedRisk > 0 { //is 2.315
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50PakistaniNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .pakistani)
        
        let someKnownValueOfQRiskWithTheseParams = 2.8
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.3
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50BangladeshiNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .bangladeshi)
        
        let someKnownValueOfQRiskWithTheseParams = 2.2
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.5
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50OtherAsianNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .otherAsian)
        
        let someKnownValueOfQRiskWithTheseParams = 1.8
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.2
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50BlackAfricanNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .blackAfrican)
        
        let someKnownValueOfQRiskWithTheseParams = 1.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.4
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50ChineseNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .chinese)
        
        let someKnownValueOfQRiskWithTheseParams = 1.2
        
        if  risk.computedRisk > 0 {
            
            print("RISK should be 1.1 but is (\(risk.computedRisk)")
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.2
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50OtherNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .other)
        
        let someKnownValueOfQRiskWithTheseParams = 1.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.2
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    
    func testFemale50BlackCaribbeannNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .blackCaribbean)
        
        let someKnownValueOfQRiskWithTheseParams = 1.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.3
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    
    
    //MARK: SMOKING
    func testFemale50WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 1.9
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteLightsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, smoking: .lightSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 2.7
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteModeratesmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, smoking: .moderateSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 3.0
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteHeavysmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, smoking: .heavySmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 3.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale60WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 60, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 4.7
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale60WhiteLightsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 60, smoking: .lightSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 6.3
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale60WhiteModeratesmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 60, smoking: .moderateSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 6.9
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale60WhiteHeavysmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 60, smoking: .heavySmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 7.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale70WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 70, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 10.9
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale70WhiteLightsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 70, smoking: .lightSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 13.7
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale70WhiteModeratesmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 70, smoking: .moderateSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 14.9
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale70WhiteHeavysmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 70, smoking: .heavySmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 15.2
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale75WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 75, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 16.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale75WhiteLightsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 75, smoking: .lightSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 19.7
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale75WhiteModeratesmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 75, smoking: .moderateSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 21.3
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale76WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 76, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 17.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale76WhiteLightsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 76, smoking: .lightSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 21.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale80WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 80, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 23.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    //MARK: DIABETES
    // Type 1
    func testFemale50WhiteNonSmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 7.5
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteHeavySmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, smoking: .heavySmoker, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 15.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale55WhiteHeavySmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 55, smoking: .heavySmoker, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 19.3
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale60WhiteHeavySmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 60, smoking: .heavySmoker, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 24.2
        
        if  risk.computedRisk > 0 {
            
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale65WhiteHeavySmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 65, smoking: .heavySmoker, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 29.8
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale70WhiteHeavySmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 70, smoking: .heavySmoker, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 36.2
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale84WhiteHeavySmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 84, smoking: .heavySmoker, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 57.6
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    // Type 2
    func testFemale50WhiteNonSmokerType2diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, diabetes: .type2)
        
        let someKnownValueOfQRiskWithTheseParams = 4.0
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale84WhiteNonSmokerType2diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 84, diabetes: .type2)
        
        let someKnownValueOfQRiskWithTheseParams = 42.2
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    // HEAVY RISK TEST - High Age, Heavy Smoker, Type 1 Diabetes, Has Family History, Has Atrial Fibrillation, is on Hypertensive Treatment, Cholesterol 4, Systolic 135
    func testFemale70WhiteHeavySmokerType1diabetesHasfamhistoryAtrialFibAntihyperTreatmentRatio4Systolic135Height165Weight70() {
        
        //This uses the default parameterss specified in the functions decleration
        let risk = getMockedRiskWith(age: 70, smoking: .heavySmoker, diabetes: .type1, familyHistory: true, atrialFibrillation: true, bloodPressureTreatment: true, cholestrolHDL: 4, systolicBP: 135, weight: 70)
        
        let someKnownValueOfQRiskWithTheseParams = 83.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    // FAMILY HISTORY
    func testFemale25WhiteNonsmokerNoDiabetesHasfamhistoryNoConditionsNoMedicationsRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(familyHistory: true)
        let someKnownValueOfQRiskWithTheseParams = 0.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.5
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesHasfamhistoryNoConditionsNoMedicationsRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, familyHistory: true)
        let someKnownValueOfQRiskWithTheseParams = 2.4
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale75WhiteNonsmokerNoDiabetesHasfamhistoryNoConditionsNoMedicationsRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 75, familyHistory: true)
        let someKnownValueOfQRiskWithTheseParams = 17.9
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale84WhiteNonsmokerNoDiabetesHasfamhistoryNoConditionsNoMedicationsRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 84, familyHistory: true)
        let someKnownValueOfQRiskWithTheseParams = 33.3
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteLightsmokerNoDiabetesHasfamhistoryNoConditionsNoMedicationsRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, smoking: .lightSmoker, familyHistory: true)
        let someKnownValueOfQRiskWithTheseParams = 4.0
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteLightsmokerType2DiabetesHasfamhistoryNoConditionsNoMedicationsRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, smoking: .lightSmoker, diabetes: .type2, familyHistory: true)
        let someKnownValueOfQRiskWithTheseParams = 9.7
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteLightsmokerType2DiabetesHasfamhistoryChronicKidneyNoMedicationsRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, smoking: .lightSmoker, diabetes: .type2, familyHistory: true, chronicKidneyDisease: true)
        let someKnownValueOfQRiskWithTheseParams = 16.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    //MARK: CONDITIONS
    
    func testFemale25WhiteNonsmokerNoDiabetesNofamhistoryChronicKidneyNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(chronicKidneyDisease: true)
        let someKnownValueOfQRiskWithTheseParams = 0.1
        if  risk.computedRisk > 0 {
           
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.4
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryChronicKidneyNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, chronicKidneyDisease: true)
        let someKnownValueOfQRiskWithTheseParams = 2.8
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale75WhiteNonsmokerNoDiabetesNofamhistoryChronicKidneyNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 75, chronicKidneyDisease: true)
        let someKnownValueOfQRiskWithTheseParams = 16.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryAtrialFibrillationNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, atrialFibrillation: true)
        let someKnownValueOfQRiskWithTheseParams = 5.7
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryMigrainesNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, migraines: true)
        let someKnownValueOfQRiskWithTheseParams = 2.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryRheumatoidArthritisNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, rheumatoidArthritis: true)
        let someKnownValueOfQRiskWithTheseParams = 2.0
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistorySystemicLupusErythematosusNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, systemicLupusErythematosus: true)
        let someKnownValueOfQRiskWithTheseParams = 2.8
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistorySevereMentalIllnessNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, severeMentalIllness: true)
        let someKnownValueOfQRiskWithTheseParams = 1.8
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    //MARK: MEDICATIONS
    
    func testFemale25WhiteNonsmokerNoDiabetesNofamhistoryNocondHypertensionTreatmentRatio3p5Systolic120Height165Weight65() {
        
        let risk = getMockedRiskWith(bloodPressureTreatment: true, systolicBP: 120)
        let someKnownValueOfQRiskWithTheseParams = 0.6
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondHypertensionTreatmentRatio3p5Systolic120Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, bloodPressureTreatment: true, systolicBP: 120)
        let someKnownValueOfQRiskWithTheseParams = 2.7
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale75WhiteNonsmokerNoDiabetesNofamhistoryNocondHypertensionTreatmentRatio3p5Systolic120Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 75, bloodPressureTreatment: true, systolicBP: 120)
        let someKnownValueOfQRiskWithTheseParams = 18.2
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondAtypicalAntipsychoticMedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, atypicalAntipsychoticMedication: true)
        let someKnownValueOfQRiskWithTheseParams = 2.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondSteroidTablesRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, regularSteroidTablets: true)
        let someKnownValueOfQRiskWithTheseParams = 2.7
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    //MARK: CHOLESTEROL
    func testFemale25WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio2Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(cholestrolHDL: 2)
        let someKnownValueOfQRiskWithTheseParams = 0.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.5
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio2Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, cholestrolHDL: 2.0)
        let someKnownValueOfQRiskWithTheseParams = 1.3
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale75WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio2Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 75, cholestrolHDL: 2.0)
        let someKnownValueOfQRiskWithTheseParams = 12.3
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio4Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, cholestrolHDL: 4.0)
        let someKnownValueOfQRiskWithTheseParams = 1.8
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio6Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, cholestrolHDL: 6.0)
        let someKnownValueOfQRiskWithTheseParams = 2.4
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio8Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, cholestrolHDL: 8.0)
        let someKnownValueOfQRiskWithTheseParams = 3.2
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    //MARK: BMI
    func testFemale25WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio3p5Systolic105Height165Weight50() {
        
        let risk = getMockedRiskWith(weight: 50)
        let someKnownValueOfQRiskWithTheseParams = 0.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.4
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio3p5Systolic105Height165Weight50() {
        
        let risk = getMockedRiskWith(age: 50, weight: 50)
        let someKnownValueOfQRiskWithTheseParams = 1.6
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio3p5Systolic105Height165Weight80() {
        
        let risk = getMockedRiskWith(age: 50, weight: 80)
        let someKnownValueOfQRiskWithTheseParams = 1.6
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio3p5Systolic105Height165Weight100() {
        
        let risk = getMockedRiskWith(age: 50, weight: 100)
        let someKnownValueOfQRiskWithTheseParams = 1.9
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    //RANDOM
    
    func testFemale63WhiteExSmokerNoDiabetesHasfamhistorySevereMentalIllnessNoMedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 63, smoking: .exSmoker, familyHistory: true, severeMentalIllness: true)
        let someKnownValueOfQRiskWithTheseParams = 9.0
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale48WhiteNonSmokerDiabetesType1HasfamhistoryNoCondNoMedRatio3p5Systolic125Height173Weight80() {
        
        let risk = getMockedRiskWith(age: 48, diabetes: .type1, familyHistory: true, systolicBP: 125, height: 173, weight: 80)
        let someKnownValueOfQRiskWithTheseParams = 12.5
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    //MARK: Male Tests
    
    //MARK: Age
    func testMale25WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith()
        let someKnownValueOfQRiskWithTheseParams = 0.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.5
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale30WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 30)
        let someKnownValueOfQRiskWithTheseParams = 0.2
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale35WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 35)
        
        let someKnownValueOfQRiskWithTheseParams = 0.5
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale40WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 40)
        
        let someKnownValueOfQRiskWithTheseParams = 1.1
        
        if  risk.computedRisk > 0 {
        
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale45WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 45)
        
        let someKnownValueOfQRiskWithTheseParams = 1.9
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50)
        
        let someKnownValueOfQRiskWithTheseParams = 3.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale55WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 55)
        
        let someKnownValueOfQRiskWithTheseParams = 4.8
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale60WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 60)
        
        let someKnownValueOfQRiskWithTheseParams = 7.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale65WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 65)
        
        let someKnownValueOfQRiskWithTheseParams = 10.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.2
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    func testMale70WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 70)
        
        let someKnownValueOfQRiskWithTheseParams = 14.8
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale75WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 75)
        
        let someKnownValueOfQRiskWithTheseParams = 21.0
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    func testMale84WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 84)
        
        let someKnownValueOfQRiskWithTheseParams = 38.2
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    //MARK: ETHNICITY
    func testMale50IndianNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, ethnicity: .indian)
        
        let someKnownValueOfQRiskWithTheseParams = 4.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50PakistaniNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, ethnicity: .pakistani)
        
        let someKnownValueOfQRiskWithTheseParams = 4.9
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50BangladeshiNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, ethnicity: .bangladeshi)
        
        let someKnownValueOfQRiskWithTheseParams = 5.2
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.2
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50OtherAsianNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, ethnicity: .otherAsian)
        
        let someKnownValueOfQRiskWithTheseParams = 3.2
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50BlackAfricanNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, ethnicity: .blackAfrican)
        
        let someKnownValueOfQRiskWithTheseParams = 2.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.15
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50ChineseNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, ethnicity: .chinese)
        
        let someKnownValueOfQRiskWithTheseParams = 2.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50OtherNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, ethnicity: .other)
        
        let someKnownValueOfQRiskWithTheseParams = 2.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    
    func testMale50BlackCaribbeannNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, ethnicity: .blackCaribbean)
        
        let someKnownValueOfQRiskWithTheseParams = 2.2
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    //MARK: SMOKING
    func testMale50WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 3.7
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteLightsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, smoking: .lightSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 5.0
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteModeratesmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, smoking: .moderateSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 5.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteHeavysmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, smoking: .heavySmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 6.0
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale60WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 60, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 8.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale60WhiteLightsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 60, smoking: .lightSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 10.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale60WhiteModeratesmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 60, smoking: .moderateSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 11.0
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale60WhiteHeavysmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 60, smoking: .heavySmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 11.9
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale70WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 70, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 15.9
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale70WhiteLightsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 70, smoking: .lightSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 19.0
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale70WhiteModeratesmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 70, smoking: .moderateSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 19.9
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale70WhiteHeavysmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 70, smoking: .heavySmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 21.0
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale75WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 75, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 21.8
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale75WhiteLightsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 75, smoking: .lightSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 25.0
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale75WhiteModeratesmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 75, smoking: .moderateSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 26.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale76WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 76, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 23.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale76WhiteLightsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 76, smoking: .lightSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 26.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale80WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 80, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 29.4
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    //MARK: DIABETES
    // Type 1
    func testMale50WhiteNonSmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 8.8
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteHeavySmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, smoking: .heavySmoker, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 16.7
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale55WhiteHeavySmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 55, smoking: .heavySmoker, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 21.9
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale60WhiteHeavySmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 60, smoking: .heavySmoker, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 28.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale65WhiteHeavySmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 65, smoking: .heavySmoker, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 35.6
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale70WhiteHeavySmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 70, smoking: .heavySmoker, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 44.5
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale84WhiteHeavySmokerType1diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 84, smoking: .heavySmoker, diabetes: .type1)
        
        let someKnownValueOfQRiskWithTheseParams = 76.0
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    // Type 2
    func testMale50WhiteNonSmokerType2diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, diabetes: .type2)
        
        let someKnownValueOfQRiskWithTheseParams = 6.3
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale84WhiteNonSmokerType2diabetesNofamhistoryNocondNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 84, diabetes: .type2)
        
        let someKnownValueOfQRiskWithTheseParams = 48.1
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    // HEAVY RISK TEST - High Age, Heavy Smoker, Type 1 Diabetes, Has Family History, Has Atrial Fibrillation, is on Hypertensive Treatment, Cholesterol 4, Systolic 135
    func testMale70WhiteHeavySmokerType1diabetesHasfamhistoryAtrialFibAntihyperTreatmentRatio4Systolic135Height180Weight80() {
        
        //This uses the default parameterss specified in the functions decleration
        let risk = getMaleMockedRiskWith(age: 70, smoking: .heavySmoker, diabetes: .type1, familyHistory: true, atrialFibrillation: true, bloodPressureTreatment: true, cholestrolHDL: 4, systolicBP: 135)
        
        let someKnownValueOfQRiskWithTheseParams = 82.8
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    //MARK: CONDITIONS
    
    func testMale25WhiteNonsmokerNoDiabetesNofamhistoryChronicKidneyNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(chronicKidneyDisease: true)
        let someKnownValueOfQRiskWithTheseParams = 0.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.3
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryChronicKidneyNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, chronicKidneyDisease: true)
        let someKnownValueOfQRiskWithTheseParams = 5.8
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale75WhiteNonsmokerNoDiabetesNofamhistoryChronicKidneyNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 75, chronicKidneyDisease: true)
        let someKnownValueOfQRiskWithTheseParams = 23.7
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryAtrialFibrillationNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, atrialFibrillation: true)
        let someKnownValueOfQRiskWithTheseParams = 6.4
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryMigrainesNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, migraines: true)
        let someKnownValueOfQRiskWithTheseParams = 3.7
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryRheumatoidArthritisNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, rheumatoidArthritis: true)
        let someKnownValueOfQRiskWithTheseParams = 3.8
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistorySystemicLupusErythematosusNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, systemicLupusErythematosus: true)
        let someKnownValueOfQRiskWithTheseParams = 4.8
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistorySevereMentalIllnessNomedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, severeMentalIllness: true)
        let someKnownValueOfQRiskWithTheseParams = 3.5
        if  risk.computedRisk > 0 {

            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.2
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    //MARK: MEDICATIONS
    
    func testMale25WhiteNonsmokerNoDiabetesNofamhistoryNocondHypertensionTreatmentRatio3p5Systolic120Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(bloodPressureTreatment: true, systolicBP: 120)
        let someKnownValueOfQRiskWithTheseParams = 0.4
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.2 * someKnownValueOfQRiskWithTheseParams // Works with 0.2
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryNocondHypertensionTreatmentRatio3p5Systolic120Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, bloodPressureTreatment: true, systolicBP: 120)
        let someKnownValueOfQRiskWithTheseParams = 5.0
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale75WhiteNonsmokerNoDiabetesNofamhistoryNocondHypertensionTreatmentRatio3p5Systolic120Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 75, bloodPressureTreatment: true, systolicBP: 120)
        let someKnownValueOfQRiskWithTheseParams = 24.5
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryNocondAtypicalAntipsychoticMedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, atypicalAntipsychoticMedication: true)
        let someKnownValueOfQRiskWithTheseParams = 3.5
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryNocondSteroidTablesRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, regularSteroidTablets: true)
        let someKnownValueOfQRiskWithTheseParams = 4.6
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    //MARK: CHOLESTEROL
    func testMale25WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio2Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(cholestrolHDL: 2)
        let someKnownValueOfQRiskWithTheseParams = 0.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.6
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio2Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, cholestrolHDL: 2.0)
        let someKnownValueOfQRiskWithTheseParams = 2.4
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale75WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio2Systolic105Height165Weight65() {
        
        let risk = getMaleMockedRiskWith(age: 75, cholestrolHDL: 2.0)
        let someKnownValueOfQRiskWithTheseParams = 16.6
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio4Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, cholestrolHDL: 4.0)
        let someKnownValueOfQRiskWithTheseParams = 3.4
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio6Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, cholestrolHDL: 6.0)
        let someKnownValueOfQRiskWithTheseParams = 4.7
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio8Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, cholestrolHDL: 8.0)
        let someKnownValueOfQRiskWithTheseParams = 6.6
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    //MARK: BMI
    func testMale25WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio3p5Systolic105Height180Weight50() {
        
        let risk = getMaleMockedRiskWith(weight: 50)
        let someKnownValueOfQRiskWithTheseParams = 0.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.4
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio3p5Systolic105Height180Weight50() {
        
        let risk = getMaleMockedRiskWith(age: 50, weight: 50)
        let someKnownValueOfQRiskWithTheseParams = 3.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.3
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 50, weight: 80)
        let someKnownValueOfQRiskWithTheseParams = 3.1
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio3p5Systolic105Height180Weight100() {
        
        let risk = getMaleMockedRiskWith(age: 50, weight: 100)
        let someKnownValueOfQRiskWithTheseParams = 3.3
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    //RANDOM
    
    func testMale63WhiteExSmokerNoDiabetesHasfamhistorySevereMentalIllnessNoMedRatio3p5Systolic105Height180Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 63, smoking: .exSmoker, familyHistory: true, severeMentalIllness: true)
        let someKnownValueOfQRiskWithTheseParams = 14.7
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testMale48WhiteNonSmokerDiabetesType1HasfamhistoryNoCondNoMedRatio3p5Systolic125Height173Weight80() {
        
        let risk = getMaleMockedRiskWith(age: 48, diabetes: .type1, familyHistory: true, systolicBP: 125, height: 173, weight: 80)
        let someKnownValueOfQRiskWithTheseParams = 14.9
        
        if  risk.computedRisk > 0 {
        
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    
    
    
    
    
    // MARK: FEMALE Mock/Test Data Method
    func getMockedRiskWith(gender: Gender = .female, age: Double = 25, ethnicity: Ethnicity = .white, smoking: SmokingStatus = .nonSmoker, diabetes: DiabetesStatus = .healthy, familyHistory: Bool = false, atrialFibrillation: Bool = false, chronicKidneyDisease: Bool = false, migraines: Bool = false, rheumatoidArthritis: Bool = false, systemicLupusErythematosus: Bool = false, severeMentalIllness: Bool = false, erectileDysfunction: Bool = false, noConditions: Bool = true, bloodPressureTreatment: Bool = false, atypicalAntipsychoticMedication: Bool = false, regularSteroidTablets: Bool = false, noMedications: Bool = true, cholestrolHDL: Double = 3.5, systolicBP: Double = 105, height: Double = 165, weight: Double = 65 ) -> RiskDataManager {
        
        let riskTest = RiskDataManager.shared
        riskTest.gender = gender
        riskTest.age = age
        riskTest.ethnicity = ethnicity
        riskTest.smokingStatus = smoking
        riskTest.diabetesStatus = diabetes
        riskTest.familyHistory = familyHistory
        riskTest.atrialFibrillation = atrialFibrillation
        riskTest.chronicKidneyDisease = chronicKidneyDisease
        riskTest.migraines = migraines
        riskTest.rheumatoidArthritis = rheumatoidArthritis
        riskTest.systemicLupusErythematosus = systemicLupusErythematosus
        riskTest.severeMentalIllness = severeMentalIllness
        riskTest.erectileDysfunction = erectileDysfunction
        riskTest.noConditions = noConditions
        riskTest.bloodPressureTreatment = bloodPressureTreatment
        riskTest.atypicalAntipsychoticMedication = atypicalAntipsychoticMedication
        riskTest.regularSteroidTablets = regularSteroidTablets
        riskTest.noMedications = noMedications
        riskTest.cholesterolHDL = cholestrolHDL
        riskTest.systolicBloodPressure = systolicBP
        riskTest.height = height
        riskTest.weight = weight
        
        riskTest.computedRisk = riskTest.computeFemaleRisk()
        
        return riskTest
    }
    
    
    
    // MARK: MALE Mock/Test Data Method
    func getMaleMockedRiskWith(gender: Gender = .male, age: Double = 25, ethnicity: Ethnicity = .white, smoking: SmokingStatus = .nonSmoker, diabetes: DiabetesStatus = .healthy, familyHistory: Bool = false, atrialFibrillation: Bool = false, chronicKidneyDisease: Bool = false, migraines: Bool = false, rheumatoidArthritis: Bool = false, systemicLupusErythematosus: Bool = false, severeMentalIllness: Bool = false, erectileDysfunction: Bool = false, noConditions: Bool = true, bloodPressureTreatment: Bool = false, atypicalAntipsychoticMedication: Bool = false, regularSteroidTablets: Bool = false, noMedications: Bool = true, cholestrolHDL: Double = 3.5, systolicBP: Double = 105, height: Double = 180, weight: Double = 80 ) -> RiskDataManager {
        
        let riskTest = RiskDataManager.shared
        riskTest.gender = gender
        riskTest.age = age
        riskTest.ethnicity = ethnicity
        riskTest.smokingStatus = smoking
        riskTest.diabetesStatus = diabetes
        riskTest.familyHistory = familyHistory
        riskTest.atrialFibrillation = atrialFibrillation
        riskTest.chronicKidneyDisease = chronicKidneyDisease
        riskTest.migraines = migraines
        riskTest.rheumatoidArthritis = rheumatoidArthritis
        riskTest.systemicLupusErythematosus = systemicLupusErythematosus
        riskTest.severeMentalIllness = severeMentalIllness
        riskTest.erectileDysfunction = erectileDysfunction
        riskTest.noConditions = noConditions
        riskTest.bloodPressureTreatment = bloodPressureTreatment
        riskTest.atypicalAntipsychoticMedication = atypicalAntipsychoticMedication
        riskTest.regularSteroidTablets = regularSteroidTablets
        riskTest.noMedications = noMedications
        riskTest.cholesterolHDL = cholestrolHDL
        riskTest.systolicBloodPressure = systolicBP
        riskTest.height = height
        riskTest.weight = weight
        
        riskTest.computedRisk = riskTest.computeMaleRisk()
        
        return riskTest
    }
    
    

}
