//
//  HelloWorldUITests.swift
//  HelloWorldUITests
//
//  Created by Maksim Ryzhikov on 2019-05-05.
//  Copyright © 2019 foo. All rights reserved.
//

import XCTest

class HelloWorldUITests: XCTestCase {
    override func setUp() {
        continueAfterFailure = false
    }

    func testExample() {
        let app = XCUIApplication()
        app.launch()

        let hiLabel = app.staticTexts[AccessibilityIdentifiers.hiLabel]
        XCTAssertEqual(hiLabel.label, "Hello World")
    }
}
