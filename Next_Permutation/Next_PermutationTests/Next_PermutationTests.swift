//
//  Next_PermutationTests.swift
//  Next_PermutationTests
//
//  Created by hua on 16/9/1.
//  Copyright © 2016年 212. All rights reserved.
//

import XCTest
@testable import Next_Permutation

class Next_PermutationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_001() {
        var input: [Int] = [1, 2, 3]
//        var test = Solution.reverseInplace(&input, start: <#T##Int#>, end: <#T##Int#>)
        let expected: [Int] = [1, 3, 2]
        var result: [Int] = input
        Solution.nextPermutation(&result)
        XCTAssertEqual(expected, result)
    }
    func test_002() {
        let input: [Int] = [3, 2, 1]
        let expected: [Int] = [1, 2, 3]
        var result: [Int] = input
        Solution.nextPermutation(&result)
        XCTAssertEqual(expected, result)
    }
    func test_003() {
        let input: [Int] = [1, 1, 5]
        let expected: [Int] = [1, 5, 1]
        var result: [Int] = input
        Solution.nextPermutation(&result)
        XCTAssertEqual(expected, result)
    }
    func test_004() {
        let input: [Int] = [1, 2]
        let expected: [Int] = [2, 1]
        var result: [Int] = input
        Solution.nextPermutation(&result)
        XCTAssertEqual(expected, result)
    }
    func test_005() {
        let input: [Int] = [1]
        let expected: [Int] = [1]
        var result: [Int] = input
        Solution.nextPermutation(&result)
        XCTAssertEqual(expected, result)
    }

    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
