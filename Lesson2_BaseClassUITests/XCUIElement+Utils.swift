import XCTest

extension XCUIElement {

    @discardableResult
    func waitForElementToBecomeHittable(timeout: TimeInterval) -> Bool {
        let predicate   = NSPredicate(format: "exists == true && isHittable == true")
        let expectation = XCTNSPredicateExpectation(predicate: predicate, object: self)
        let result = XCTWaiter().wait(for: [expectation], timeout: timeout)
        return result == .completed
    }
    
    @discardableResult
    func waitForElementToBecomeHittableSimpler(timeout: TimeInterval) -> Bool {
        return waitForExistence(timeout: timeout) && isHittable
    }
    
    @discardableResult
    func waitForElementToBecomeUnhittable(timeout: TimeInterval) -> Bool {
        let predicate   = NSPredicate(format: "exists == false && isHittable == false")
        let expectation = XCTNSPredicateExpectation(predicate: predicate, object: self)

        let result = XCTWaiter().wait(for: [ expectation ], timeout: timeout)

        return result == .completed
    }
    
    @discardableResult
    func waitForElementsValueToMatch(predicate: String, timeout: TimeInterval) -> Bool {
        let predicate   = NSPredicate(format: "value BEGINSWITH '\(predicate)'", argumentArray: nil)
        let expectation = XCTNSPredicateExpectation(predicate: predicate, object: self)

        let result = XCTWaiter().wait(for: [ expectation ], timeout: timeout)

        return result == .completed
    }
}
