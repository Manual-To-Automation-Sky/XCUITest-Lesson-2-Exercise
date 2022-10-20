//
//  SkyTrainingUITests.swift
//  SkyTrainingUITests
//
//  Created by Gary Behan on 23/08/2022.
//

import XCTest

class Lesson2_BaseClassUITests: BaseClassUI {


    func testAlert() throws {
        app.buttons["Alert"].tap()
        
        XCTAssertEqual(app.alerts.element.label, "Alert Test")
        XCTAssert(app.alerts.element.staticTexts["This is a native alert"].exists)
        
        app.alerts.scrollViews.otherElements.buttons["OK"].tap()
    }
    
    func testTextField() throws {
        // The text that will be typed into the text field and then output to the label
        let textToEnter = "Sky App Training"
        
        // Get and tap the Text Field button on the main page
        app.buttons["Text Field"].tap()
        
        // Tap and enter text into the text field.
        let textField = app.textFields["TextField"]
        textField.tap()
        textField.typeText(textToEnter)
        
        // Assert that the label under the text field has been populated with the text we entered
        XCTAssertEqual(app.staticTexts["SubmittedTextLabel"].label, textToEnter)
    }
    
    func testSuccessLogin() throws {
        let username = "correct"
        let password = "please"
        
        app.buttons["Login"].tap()
        
        let usernameField = app.textFields["UsernameField"]
        usernameField.tap()
        usernameField.typeText(username)
        
        let passwordField = app.secureTextFields["PasswordField"]
        passwordField.tap()
        passwordField.typeText(password)
        
        app.buttons["LoginButton"].tap()
    }
    
    func testFailedLogin() throws {
        let username = "incorrect"
        let password = "please"
        
        app.buttons["Login"].tap()
        
        let usernameField = app.textFields["UsernameField"]
        usernameField.tap()
        usernameField.typeText(username)
        
        let passwordField = app.secureTextFields["PasswordField"]
        passwordField.tap()
        passwordField.typeText(password)
        
        app.buttons["LoginButton"].tap()
    }
    
    func testForm() throws {
        // Strings for the form data
        let firstName = "Gary"
        let lastName = "Behan"
        let emailAddress = "gary.b@browserstack.com"
        
        // Get and tap the Form button on the main page
        app.buttons["Form"].tap()
        
        // Get the fields that we want to type text into
        let firstNameField = app.textFields["FirstNameField"]
        let lastNameField = app.textFields["LastNameField"]
        let emailAddressField = app.textFields["EmailAddressField"]
        
        // Tap and enter the relevant data into each field
        firstNameField.tap()
        firstNameField.typeText(firstName)
        lastNameField.tap()
        lastNameField.typeText(lastName)
        emailAddressField.tap()
        emailAddressField.typeText(emailAddress)
        
        // Tap the Submit button
        app.buttons["Submit"].tap()
        
        // Assert that the name and email address have been populated correctly.
        XCTAssertTrue(app.staticTexts["EnteredNameLabel"].label.contains(firstName + " " + lastName))
        XCTAssertTrue(app.staticTexts["EnteredEmailLabel"].label.contains(emailAddress))
    }
    
    func testEnvVariables() throws {
        let testEnvVar: String = ProcessInfo.processInfo.environment["BROWSERSTACK_USERNAME"] ?? "nottest"
        let testEnvVar2: String = ProcessInfo.processInfo.environment["BROWSERSTACK_ACCESS_KEY"] ?? "nottest2"
        
        print(testEnvVar)
        print(testEnvVar2)
    }
}
