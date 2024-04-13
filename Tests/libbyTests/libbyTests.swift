import XCTest
@testable import libby

final class libbyTests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods

        XCTAssertTrue(Libby().str() == "libbystr", "expected OK")
        XCTAssertFalse(Libby().str() == "not the string", "expected failure")
    }
}
