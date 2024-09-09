//
//  TAUUITestBase.swift
//  TAUUITests
//
//  Created by Jared Meier on 9/9/24.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUpWithError() throws {
        
         try super.setUpWithError()
        continueAfterFailure = false
        app.launch()

    }

    override func tearDownWithError() throws {
    
        try super.tearDownWithError()
        app.terminate()
    }
    
    
}
