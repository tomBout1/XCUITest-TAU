//
//  TAUElements.swift
//  TAUUITests
//
//  Created by Jared Meier on 9/13/24.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

enum TAUScreen: String {
    case welcomMessage = "welcomeMessage"
    case tauLogo = "TAUlogo"
    case enterCityLabel = "enterCity"
    case cityTextField = "city"
    case enrollButton = "enrollButton"
    case thankYouMessage = "Thanks for Joining!"
    case errorMessage = "Please Enter City"
    case dismissKeyBoard = "Return"
    
    var element : XCUIElement {
        switch self {
        case .welcomMessage, .enterCityLabel, .thankYouMessage, .errorMessage:
            return XCUIApplication().staticTexts[self.rawValue]
        case .cityTextField:
            return XCUIApplication().textFields[self.rawValue]
        case .enrollButton:
            return XCUIApplication().buttons[self.rawValue]
        case .tauLogo:
            return XCUIApplication().images[self.rawValue]
        case .dismissKeyBoard:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
    
}
