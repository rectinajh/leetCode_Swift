//
//  SimplifyPathTests.swift
//  SimplifyPathTests
//
//  Created by hua on 16/9/5.
//  Copyright © 2016年 212. All rights reserved.
//

import XCTest
@testable import SimplifyPath

class SimplifyPathTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func test_001() {
        let input: String = "/..."
        let expected: String = "/..."
        
        let result = SimplifyPath.simplifyPath(input)
        
        XCTAssertEqual(result, expected)

    }
    
    
    func test_002() {
        let input: String = "/home/"
        let expected: String = "/home"
        let result = SimplifyPath.simplifyPath(input)
         XCTAssertEqual(result, expected)
        
    }
    func test_003() {
        let input: String = "/a/./b/../../c/"
        let expected: String = "/c"
        let result = SimplifyPath.simplifyPath(input)
        XCTAssertEqual(result, expected)
        
    }
    func test_004() {
        let input: String = "/abc/..."
        let expected: String = "/abc/..."
        let result = SimplifyPath.simplifyPath(input)
        XCTAssertEqual(result, expected)
        
    }
    func test_005() {
        let input: String = "/.."
        let expected: String = "/"
        let result = SimplifyPath.simplifyPath(input)
        XCTAssertEqual(result, expected)
        
    }
    func test_006() {
        let input: String = "/."
        let expected: String = "/"
        let result = SimplifyPath.simplifyPath(input)
        XCTAssertEqual(result, expected)
        
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
