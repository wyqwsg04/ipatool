//
//  IpaToolTests.swift
//  IpaToolTests
//
//  Created by Stefan on 01/10/14.
//  Copyright (c) 2014 Stefan van den Oord. All rights reserved.
//

import UIKit
import XCTest

class IpaToolTests: XCTestCase {
    
    var ipaTool : IpaToolMain = IpaToolMain()
    
    override func setUp() {
        ipaTool = IpaToolMain()
    }
    
    func testUsage()
    {
        var output = ipaTool.run([])
        var range = output.lowercaseString.rangeOfString("usage")
        XCTAssertTrue(range != nil)
    }
}