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
            
            //Test data er stærra en 0, þetta condition er bara hérna því ég veit að someKnown... er > 0 og ég er að nota tölugildi
            //Tölugildið á milli þeirra er á einhverju bili
            //Til að teljast ástættanleg niðurstaða
            
            //Assertum að eftirfarandi statement sé satt
            //Basically að riskið okkar sé nógu nálægt known value
            //Ef þetta failar þá failar testið
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.3
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale30WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 30)
        let someKnownValueOfQRiskWithTheseParams = 0.1
        if  risk.computedRisk > 0 {
        
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.6
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
        
        let someKnownValueOfQRiskWithTheseParams = 2.5
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 3.9
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 6.1
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 9.3
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 14.3
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale76WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 76)
        
        let someKnownValueOfQRiskWithTheseParams = 15.5
        
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale77WhiteNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 77)
        
        let someKnownValueOfQRiskWithTheseParams = 16.8
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 28.9
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 2.0
        
        if  risk.computedRisk > 0 { //is 2.315
            
            print("RISK should be 2.0 but is (\(risk.computedRisk)")
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.2
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50PakistaniNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .pakistani)
        
        let someKnownValueOfQRiskWithTheseParams = 2.7
        
        if  risk.computedRisk > 0 { //is 3.396
            
            print("RISK should be 2.7 but is (\(risk.computedRisk)")

            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.3
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50BangladeshiNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .bangladeshi)
        
        let someKnownValueOfQRiskWithTheseParams = 2.0
        
        if  risk.computedRisk > 0 { // is 3.251
            
            print("RISK should be 2.0 but is (\(risk.computedRisk)")
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.7
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50OtherAsianNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .otherAsian)
        
        let someKnownValueOfQRiskWithTheseParams = 1.6
        
        if  risk.computedRisk > 0 {
            
            print("RISK should be 1.6 but is (\(risk.computedRisk)")
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.3
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50BlackAfricanNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .blackAfrican)
        
        let someKnownValueOfQRiskWithTheseParams = 1.0
        
        if  risk.computedRisk > 0 {
            
            print("RISK should be 1.0 but is (\(risk.computedRisk)")
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.5
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50ChineseNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .chinese)
        
        let someKnownValueOfQRiskWithTheseParams = 1.1
        
        if  risk.computedRisk > 0 {
            
            print("RISK should be 1.1 but is (\(risk.computedRisk)")
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.3
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50OtherNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .other)
        
        let someKnownValueOfQRiskWithTheseParams = 1.3
        
        if  risk.computedRisk > 0 { // is 1.670
            
            print("RISK should be 1.3 but is (\(risk.computedRisk)")
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.3
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    
    func testFemale50BlackCaribbeannNonsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, ethnicity: .blackCaribbean)
        
        let someKnownValueOfQRiskWithTheseParams = 1.3
        
        if  risk.computedRisk > 0 { // is 1.773
            
            print("RISK should be 1.3 but is (\(risk.computedRisk)")
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.4
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            // Test fails
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    
    
    //MARK: SMOKING
    func testFemale50WhiteExsmokerNoDiabetesNofamhistoryNocondNomedRatio3p5Systolic105Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, smoking: .exSmoker)
        
        let someKnownValueOfQRiskWithTheseParams = 1.8
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 2.5
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 2.8
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 3.2
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 4.4
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 5.9
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 6.4
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 6.9
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 10.2
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 12.9
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 13.9
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 14.3
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 15.1
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 18.5
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 20.0
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 16.3
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 19.8
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 22.0
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 7.0
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 14.1
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 18.1
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 22.7
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 28.1
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 34.3
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 55.5
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 3.7
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 40.0
        
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
        
        let someKnownValueOfQRiskWithTheseParams = 81.2
        
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
        let someKnownValueOfQRiskWithTheseParams = 2.2
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
        let someKnownValueOfQRiskWithTheseParams = 16.8
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
        let someKnownValueOfQRiskWithTheseParams = 31.5
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
        let someKnownValueOfQRiskWithTheseParams = 3.7
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
        let someKnownValueOfQRiskWithTheseParams = 9.0
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
        let someKnownValueOfQRiskWithTheseParams = 15.1
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
        let someKnownValueOfQRiskWithTheseParams = 2.6
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
        let someKnownValueOfQRiskWithTheseParams = 15.1
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
        let someKnownValueOfQRiskWithTheseParams = 5.3
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
        let someKnownValueOfQRiskWithTheseParams = 1.9
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
        let someKnownValueOfQRiskWithTheseParams = 1.9
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
        let someKnownValueOfQRiskWithTheseParams = 2.6
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
        let someKnownValueOfQRiskWithTheseParams = 1.7
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    // MEDICATIONS
    
    func testFemale25WhiteNonsmokerNoDiabetesNofamhistoryNocondHypertensionTreatmentRatio3p5Systolic120Height165Weight65() {
        
        let risk = getMockedRiskWith(bloodPressureTreatment: true, systolicBP: 120)
        let someKnownValueOfQRiskWithTheseParams = 0.5
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams // Works with 0.2
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondHypertensionTreatmentRatio3p5Systolic120Height165Weight65() {
        
        let risk = getMockedRiskWith(age: 50, bloodPressureTreatment: true, systolicBP: 120)
        let someKnownValueOfQRiskWithTheseParams = 2.6
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
        let someKnownValueOfQRiskWithTheseParams = 17.1
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
        let someKnownValueOfQRiskWithTheseParams = 2.0
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
        let someKnownValueOfQRiskWithTheseParams = 2.6
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    // CHOLESTEROL
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
        let someKnownValueOfQRiskWithTheseParams = 1.2
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
        let someKnownValueOfQRiskWithTheseParams = 11.5
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
        let someKnownValueOfQRiskWithTheseParams = 1.6
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
        let someKnownValueOfQRiskWithTheseParams = 2.2
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
        let someKnownValueOfQRiskWithTheseParams = 3.0
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    //BMI
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
        let someKnownValueOfQRiskWithTheseParams = 1.5
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio3p5Systolic105Height165Weight80() {
        
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
    
    func testFemale50WhiteNonsmokerNoDiabetesNofamhistoryNocondNoMedRatio3p5Systolic105Height165Weight100() {
        
        let risk = getMockedRiskWith(age: 50, weight: 100)
        let someKnownValueOfQRiskWithTheseParams = 1.8
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
        let someKnownValueOfQRiskWithTheseParams = 8.4
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
        let someKnownValueOfQRiskWithTheseParams = 11.7
        if  risk.computedRisk > 0 {
            
            let acceptedErrorMargin: Double = 0.1 * someKnownValueOfQRiskWithTheseParams
            XCTAssertTrue( abs(risk.computedRisk - someKnownValueOfQRiskWithTheseParams) < acceptedErrorMargin, "Computed and test data within range")
            
        } else {
            //Testið failar
            XCTFail("Difference between computed and test data too big")
        }
    }
    
    
    
    
    
    
    
    

    
    
    

    
    // Mock/Test Data
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
        
        return riskTest
    }
    
    

}
