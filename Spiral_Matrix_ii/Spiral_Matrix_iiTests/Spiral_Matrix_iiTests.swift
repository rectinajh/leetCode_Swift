//
//  Spiral_Matrix_iiTests.swift
//  Spiral_Matrix_iiTests
//
//  Created by hua on 16/8/18.
//  Copyright © 2016年 212. All rights reserved.
//

import XCTest
@testable import Spiral_Matrix_ii

class Spiral_Matrix_iiTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_001() {
        let input = 3
        let expected : [[Int]] = [
        [1,2,3],[8,9,4],[7,6,5]]
        
        let result = Solution_I().generateMatrix(input)
        XCTAssertEqual(expected, result)
        
        let result1 = Solution_II().generateMatrix(input)
        XCTAssertEqual(expected, result1)
        
    }
    
    func test_002() {
        let input = 0
        let expected : [[Int]] = []
        
        let result = Solution_I().generateMatrix(input)
        XCTAssertEqual(expected, result)
        
        let result2 = Solution_II().generateMatrix(input)
        XCTAssertEqual(expected, result2)
        
    }
    
    func test_003() {
        let input = 4
        let expected: [[Int]] = [
            [ 1, 2, 3, 4],
            [12,13,14, 5],
            [11,16,15, 6],
            [10, 9, 8, 7]
        ]
        
        let result = Solution_I().generateMatrix(input)
        XCTAssertEqual(expected, result)
        
        let result3 = Solution_II().generateMatrix(input)
        XCTAssertEqual(expected, result3)
        
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
