//
//  File.swift
//  TAUUITests
//
//  Created by Jared Meier on 9/11/24.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class BDDTest: TAUUITestBase {
    
    func testThankYouMessageInBDDStyle() {
        givenAppIsReady();
        whenIEnter(city: "Houston");
        whenIEnrolled();
        thenIShouldSeeThankYouMessage();
    }
}

extension TAUUITestBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is Ready") { _ in
            XCTAssertTrue(app.buttons["enrollButton"].exists)
        }
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I enter a city \(city) " ) { _ in
            app.textFields["city"].tap()
            app.typeText("Houston")
        }
        
    }
    
    func whenIEnrolled() {
        XCTContext.runActivity(named: "When I Enrolled") { _ in
            app.keyboards.buttons["Return"].tap()
            app.buttons["enrollButton"].tap()
        }
        
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I Should See Thank You Message") { _ in
            XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
        }
        
    }
}

