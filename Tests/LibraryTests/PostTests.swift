import XCTest
@testable import Library

class PostTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the
        var p = Post(content: "Hello, World!")
        XCTAssertEqual(p.content, "Hello, World!")
    }


    static var allTests : [(String, (PostTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}



