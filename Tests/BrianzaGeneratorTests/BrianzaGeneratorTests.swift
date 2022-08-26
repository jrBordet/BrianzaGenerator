import XCTest
@testable import BrianzaGenerator

final class BrianzaGeneratorTests: XCTestCase {
    func testOutOfRange() throws {
        let result = generateBrianza(one: -1, two: 10, three: 1, four: 0)
        
        XCTAssertNil(result)
    }
    
    func testBocherioBrianza() throws {
        let result = generateBrianza(one: 0, two: 0, three: 1, four: 1)
        
        XCTAssertEqual(result!.0, "bocherio")
        XCTAssertEqual(result!.1, "brianza")
    }
    
    func testBocherioCoreggio() throws {
        let result = generateBrianza(one: 0, two: 0, three: 1, four: 0)
        
        XCTAssertEqual(result!.0, "bocherio")
        XCTAssertEqual(result!.1, "vasciago")
    }
}
