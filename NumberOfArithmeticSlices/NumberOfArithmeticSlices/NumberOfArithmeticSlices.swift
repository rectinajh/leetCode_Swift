//
//  NumberOfArithmeticSlices.swift
//  NumberOfArithmeticSlices
//
//  Created by hua on 16/10/9.
//  Copyright © 2016年 212. All rights reserved.
//

import Foundation


/*
 A sequence of number is called arithmetic if it consists of at least three elements and if the difference between any two consecutive elements is the same.
 
 一系列的数称为算术如果它包含至少三个元素，并且如果任何两个连续元素之间的差别是相同的。
 
 For example, these are arithmetic sequence:
 
 1, 3, 5, 7, 9
 7, 7, 7, 7
 3, -1, -5, -9
 The following sequence is not arithmetic.
 
 1, 1, 2, 5, 7
 
 A zero-indexed array A consisting of N numbers is given. A slice of that array is any pair of integers (P, Q) such that 0 <= P < Q < N.
 
 A slice (P, Q) of array A is called arithmetic if the sequence:
 A[P], A[p + 1], ..., A[Q - 1], A[Q] is arithmetic. In particular, this means that P + 1 < Q.
 
 The function should return the number of arithmetic slices in the array A.
 该函数应返回的数组A算术片的数目
 */
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
