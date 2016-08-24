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


class Solution_I {
    
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

//第二种方法
class Solution_II {
    
    func generateMatrix(n:Int) -> [[Int]] {
        
        guard n > 0 else {
            return [[Int]]()
        }
        
        var num = 1
        var res = Array(count: n, repeatedValue: Array(count: n, repeatedValue: 0))
        
        var start = 0
        var end = 0
        var offset = 0
        
        for layer in 0 ..< n / 2 {
            start = layer
            end = n - layer - 1
            
            // top
            for i in start ..< end {
                res[start][i] = num
                num += 1
            }
            
            // right
            for i in start ..< end {
                res[i][end] = num
                num += 1
            }
            
            // bottom
            for i in end.stride(to: start, by: -1) {
                res[end][i] = num
                num += 1
            }
            
            // left
            for i in end.stride(to: start, by: -1) {
                res[i][start] = num
                num += 1
            }
        }
        
        // handle the center one
        if n % 2 != 0 {
            res[n / 2][n / 2] = n * n
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


