//
//  RotateImageTests.swift
//  RotateImageTests
//
//  Created by hua on 16/9/2.
//  Copyright © 2016年 212. All rights reserved.
//

import XCTest
@testable import RotateImage

class RotateImageTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_001() {
        var input: [[Int]] = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]
        ]
        var expected: [[Int]] = [
            [7, 4, 1],
            [8, 5, 2],
            [9, 6, 3]
        ]
       
        var test = input
        RotateImage.rotate(&test)
        
        XCTAssertEqual(test, expected)
        
    }
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
