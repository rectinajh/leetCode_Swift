//
//  Spiral_Matrix_ii.swift
//  Spiral_Matrix_ii
//
//  Created by hua on 16/8/18.
//  Copyright © 2016年 212. All rights reserved.
//

import Foundation

/*
 
 https://leetcode.com/problems/spiral-matrix-ii/
 
 Given an integer n, generate a square matrix filled with elements from 1 to n2 in spiral order.
 
 For example,
 Given n = 3,
 
 You should return the following matrix:
 [
 [ 1, 2, 3 ],
 [ 8, 9, 4 ],
 [ 7, 6, 5 ]
 ]
 
 Inspired by @yike at https://leetcode.com/discuss/21677/simple-c-solution-with-explaination
 */


class Solution {
    
    func generateMatrix(n:Int) -> [[Int]] {
        
        var res = Array<Array<Int>>(count:n,repeatedValue:[Int](count:n,repeatedValue:0))
        //      var matrix = [[Int]](count:n,repeatedValue:[Int](count:n,repeatedValue:0))
        
        var k = 1
        var i = 0
        while k <= n * n {
            var j = i
            // 1. horizonal, left to right
            while j < n - i {
                res[i][j] = k
                j += 1
                k += 1
            }
            j = i + 1
            // 2. vertical, top to bottom
            while j < n - i {
                res[j][n-i-1] = k
                j += 1
                k += 1
            }
            j = n - i - 2
            // 3. horizonal, right to left
            while j > i {
                res[n-i-1][j] = k
                j -= 1
                k += 1
            }
            j = n - i - 1
            // 4. vertical, bottom to  top
            while j > i {
                res[j][i] = k
                j -= 1
                k += 1
            }
            i += 1
        }
        return res
        
    }
}

//
//struct Spiral_Matrix_II {
//    static func generateMatrix( n: Int) -> [[Int]] {
//        var res = Array<Array<Int>>(count: n,repeatedValue: [Int](count:0,repeatedValue:0))
//        var k = 1
//        var i = 0
//        while k <= n * n {
//            var j = i
//            // 1. horizonal, left to right
//            while j < n - i {
//                res[i][j] = k
//                j += 1
//                k += 1
//            }
//            j = i + 1
//            // 2. vertical, top to bottom
//            while j < n - i {
//                res[j][n-i-1] = k
//                j += 1
//                k += 1
//            }
//            j = n - i - 2
//            // 3. horizonal, right to left
//            while j > i {
//                res[n-i-1][j] = k
//                j -= 1
//                k += 1
//            }
//            j = n - i - 1
//            // 4. vertical, bottom to  top
//            while j > i {
//                res[j][i] = k
//                j -= 1
//                k += 1
//            }
//            // next loop
//            i += 1
//        }
//        return res
//    }
//}


