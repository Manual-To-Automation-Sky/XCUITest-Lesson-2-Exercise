//
//  BaseClassUI.swift
//  Lesson2_BaseClassUITests
//
//  Created by Gary Behan on 13/10/2022.
//

import XCTest

class BaseClassUI : XCTestCase {
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        app.launch()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        app.terminate()
    }
}
