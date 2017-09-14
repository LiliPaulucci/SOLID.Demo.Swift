//
//  CardinalConverterTests.swift
//  SOLID.Demo.Swift
//
//  Created by Aline Cristina Paulucci Cruz on 14/09/17.
//  Copyright © 2017 A4Tecnologia. All rights reserved.
//

import XCTest
@testable import SOLID_Demo_Swift

class CardinalConverterTests: XCTestCase {
    
    var arabicToCadinalConverter : INumeralConverter  = ArabicToCardinalConverter(translator: CardinalTranslator())
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShouldNotBeNullWhenCreateInstance() {
        XCTAssertNotNil(arabicToCadinalConverter)
    }
    
    func testShouldReturnStringWhenReceiveInteger() {
        XCTAssertFalse((arabicToCadinalConverter.Convert(numeral: "4")).isEmpty)
    }
    
    func testShouldReturnZeroWhenReceive0()
    {
        XCTAssertEqual("Zero", arabicToCadinalConverter.Convert(numeral: "0"))
    }
    
    func testShouldReturnFourWhenReceive4()
    {
        XCTAssertEqual("Four", arabicToCadinalConverter.Convert(numeral: "4"))
    }
    
    func testShouldReturnTenWhenReceive10()
    {
        XCTAssertEqual("Ten", arabicToCadinalConverter.Convert(numeral: "10"))
    }
    
    func testShouldReturnFourteenWhenReceive14()
    {
        XCTAssertEqual("Fourteen", arabicToCadinalConverter.Convert(numeral: "14"))
    }
    
    func testShouldReturnThirtyFiveWhenReceive35()
    {
        XCTAssertEqual("Thirty Five", arabicToCadinalConverter.Convert(numeral: "35"))
    }
    
    func testShouldReturnFortyWhenReceive40()
    {
        XCTAssertEqual("Fourty", arabicToCadinalConverter.Convert(numeral: "40"))
    }
}
