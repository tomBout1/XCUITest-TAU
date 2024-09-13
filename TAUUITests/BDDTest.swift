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
