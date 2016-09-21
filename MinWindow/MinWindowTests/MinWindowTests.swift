//
//  MinWindowTests.swift
//  MinWindowTests
//
//  Created by hua on 16/9/21.
//  Copyright © 2016年 212. All rights reserved.
//

import XCTest
//@testable import MinWindow
@testable import MinWindow

class MinWindowTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func test_001() {
        let input: [String] = ["ADOBECODEBANC", "ABC"]
        let expected: String = "BANC"
        let result = Solution.minWindow(input[0], t: input[1])
        XCTAssertEqual(result, expected)
        
    }
    func test_002() {
        let input: [String] = ["aa", "aa"]
        let expected: String = "aa"
        let result = Solution.minWindow(input[0], t: input[1])
        XCTAssertEqual(result, expected)
        
        
    }
    func test_003() {
        let input: [String] = ["TTTTTTTE", "TE"]
        let expected: String = "TE"
        let result = Solution.minWindow(input[0], t: input[1])
        XCTAssertEqual(result, expected)
        
        
    }
    func test_004() {
        let input: [String] = ["abcdefghijklmnopqrst_z_bcdefghijklmnopqrst", "abcdefghijklmnopqrstz"]
        let expected: String = "abcdefghijklmnopqrst_z"
        let result = Solution.minWindow(input[0], t: input[1])
        XCTAssertEqual(result, expected)
    }
    func test_005() {
        let input: [String] = ["abcdefghijklmnopqrst__z_abcdefghijklmnopqrst", "abcdefghijklmnopqrstz"]
        let expected: String = "z_abcdefghijklmnopqrst"
        let result = Solution.minWindow(input[0], t: input[1])
        XCTAssertEqual(expected, result)
        
        
    }
    func test_006() {
        let input: [String] = ["bcdefghijklmnopqrst_z_abcdefghijklmnopqrst", "abcdefghijklmnopqrstz"]
        let expected: String = "z_abcdefghijklmnopqrst"
        let result = Solution.minWindow(input[0], t: input[1])
        XCTAssertEqual(result, expected)
        
        
    }
    func test_007() {
        let input: [String] = ["bcdefghijklmnopqrst_z_abcdefghijklmnopqrst", "at"]
        let expected: String = "t_z_a"
        let result = Solution.minWindow(input[0], t: input[1])
        XCTAssertEqual(result, expected)
        
        
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
