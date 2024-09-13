//
//  TAUSteps.swift
//  TAUUITests
//
//  Created by Jared Meier on 9/13/24.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

extension TAUUITestBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is Ready") { _ in
            XCTAssertTrue(TAUScreen.enrollButton.element.exists)
        }
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I enter a city \(city) " ) { _ in
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText(city)
        }
        
    }
    
    func whenIEnrolled() {
        XCTContext.runActivity(named: "When I Enrolled") { _ in
            TAUScreen.dismissKeyBoard.element.tap()
            TAUScreen.enrollButton.element.tap()
        }
        
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I Should See Thank You Message")
        { _ in
            XCTAssertTrue(TAUScreen.thankYouMessage.element.exists)
        }
        
    }
}
