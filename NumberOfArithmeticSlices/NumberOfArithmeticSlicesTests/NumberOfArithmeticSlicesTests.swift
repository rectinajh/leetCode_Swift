//
//  NumberOfArithmeticSlicesTests.swift
//  NumberOfArithmeticSlicesTests
//
//  Created by hua on 16/10/9.
//  Copyright © 2016年 212. All rights reserved.
//

import XCTest
@testable import NumberOfArithmeticSlices

class Solution {
    static func numberOfArithmeticSlices(_ A: [Int]) -> Int {
        var  index : Int = 0
        var len : Int = A.count
        
        if len < 3 {
            return 0
        }
        
        for l in 3...len {
            for i in 0 ..< len - l + 1 {
                var j = i + 1
                var dist = A[j] - A[i]
                var Flag : Bool = false
                
                while j < i + 1 {
                    if (A[j] - A[j - 1]) != dist {
                        Flag = true
                        break
                    }
                    j++
                }
                if !Flag {
                    index++
                }
                
                
            }
            print("/() - /()",l,index)
        }
        
        return index
    }
    
}



class NumberOfArithmeticSlicesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_01() {
        
        let case0 :[Int] = [1,2,3,4]
        let case1 = [2, 4, 6, 7, 8]
        let case2 = [2, 7, 11, 15]
        let case3 = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
        var test0 = Solution.numberOfArithmeticSlices(case0)
        var test1 = Solution.numberOfArithmeticSlices(case1)
        var test2 = Solution.numberOfArithmeticSlices(case2)
        var test3 = Solution.numberOfArithmeticSlices(case3)
        
        XCTAssert(test0 == 3, "answer is right")
        XCTAssert(test1 == 3, "answer is right")
        XCTAssert(test2 == 3, "answer is right")
        XCTAssert(test3 == 3, "answer is right")
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
