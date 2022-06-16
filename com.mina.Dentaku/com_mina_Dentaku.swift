//
//  com_mina_Dentaku.swift
//  com.mina.Dentaku
//
//  Created by 越智修司 on 2022/06/16.
//

import XCTest
@testable import Dentaku

class com_mina_Dentaku: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let engine = CalcEngine()
        engine.callBack = {result  in
            print(result)
        }
        engine.number(input: 0)
        XCTAssertEqual(engine.internalRegister, "0")
        engine.number(input: 1)
        XCTAssertEqual(engine.internalRegister, "1")
        engine.number(input: 1)
        XCTAssertEqual(engine.internalRegister, "11")
        engine.plus()
        XCTAssertEqual(engine.displayedResult, "11")
        XCTAssertEqual(engine.internalRegister, "0")
        engine.plus()
        XCTAssertEqual(engine.displayedResult, "11")
        XCTAssertEqual(engine.internalRegister, "0")
        engine.number(input:2)
        XCTAssertEqual(engine.displayedResult, "11")
        XCTAssertEqual(engine.internalRegister, "2")
        engine.equal()
        XCTAssertEqual(engine.displayedResult, "13")
    }


}
