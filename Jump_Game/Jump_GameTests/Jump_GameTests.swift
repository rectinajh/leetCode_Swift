//
//  Jump_GameTests.swift
//  Jump_GameTests
//
//  Created by hua on 16/8/24.
//  Copyright © 2016年 212. All rights reserved.
//

import XCTest
@testable import Jump_Game

class Jump_GameTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_001() {
        let input: [Int] = [2,3,1,1,4]
        let expected: Bool = true
        let test_001 = Solution.canJump(input)
        
        XCTAssertTrue(test_001)
    }
    func test_002() {
        let input_002: [Int] = [3,2,1,0,4]
        let expected: Bool = false
        let test_002 = Solution.canJump(input_002)
        XCTAssertFalse(test_002)
    }
    func test_003() {
        let input_003: [Int] = [0]
        let expected: Bool = true
        let test_003 = Solution.canJump(input_003)
        XCTAssertTrue(test_003)
    }
    func test_004() {
        let input_004: [Int] = [0, 1]
        let expected: Bool = false
        let test_004 = Solution.canJump(input_004)
        XCTAssertFalse(test_004)
    }
    func test_005() {
        let input_005: [Int] = [1, 0]
        let expected: Bool = true
        let test_005 = Solution.canJump(input_005)
        XCTAssertTrue(test_005)
    }
    func test_006() {
        let input_006: [Int] = [4,2,1,0,4]
        let expected: Bool = true
        let test_006 = Solution.canJump(input_006)
        XCTAssertTrue(test_006)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
