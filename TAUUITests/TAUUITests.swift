//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by Jared Meier on 9/4/24.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import XCTest

final class TAUUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAllElementsOnScreen() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["enterCity"]/*[[".staticTexts[\"Enter Your City \"]",".staticTexts[\"enterCity\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["enrollButton"].tap()
        app.staticTexts["Please Enter City"].tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testThankYouMessage() throws {
        let app = XCUIApplication()
        app.launch()
        app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.textFields["city"].tap()
        app.typeText("Houston")
        app.keyboards.buttons["Return"].tap()
        app.buttons["enrollButton"].tap()
        XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
