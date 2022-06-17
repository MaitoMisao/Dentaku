//
//  DentakuTests.swift
//  DentakuTests
//


import XCTest
@testable import Dentaku

class DentakuTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func test_足し算が行えること() {
        // Arrange(状態)
        let dentakuModel = DentakuModel()
        // Act(操作)
        let result = dentakuModel.plusMethod(firstNumber: 1, nextNumber: 1)
        // Assert(検証)
        XCTAssertEqual(result, "2")
    }
    
    func test_引き算が行えること() {
        // Arrange(状態)
        let dentakuModel = DentakuModel()
        // Act(操作)
        let result = dentakuModel.minusMethod(firstNumber: 1, nextNumber: 1)
        // Assert(検証)
        XCTAssertEqual(result, "0")
    }
    
    func test_掛け算が行えること() {
        // Arrange(状態)
        let dentakuModel = DentakuModel()
        // Act(操作)
        let result = dentakuModel.timesMethod(firstNumber: 2, nextNumber: 2)
        // Assert(検証)
        XCTAssertEqual(result, "4")
    }
    
    func test_割り算が行えること() {
        // Arrange(状態)
        let dentakuModel = DentakuModel()
        // Act(操作)
        let result = dentakuModel.divideMethod(firstNumber: 2, nextNumber: 2)
        // Assert(検証)
        XCTAssertEqual(result, "1")
    }

}
