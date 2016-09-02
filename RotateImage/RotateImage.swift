//
//  RotateImage.swift
//  RotateImage
//
//  Created by hua on 16/9/2.
//  Copyright © 2016年 212. All rights reserved.
//

import Foundation


/**
 原题：
 翻译：
 思路：
 程序：
 扩展：
 * Question Link: https://leetcode.com/problems/rotate-image/
 Rotate Image
 You are given an n x n 2D matrix representing an image.
 Rotate the image by 90 degrees (clockwise).
 Follow up:
 Could you do this in-place?
 
 旋转图像
  您将得到一个n×n的2D矩阵表示图像。
  通过90度（顺时针方向）旋转的图像。
 
 
 其实题目更好理解为旋转一个矩阵的下标90°。实际问题实际分析，这里不用图形学的选择矩阵的计算方法了。
 关键是要把下标计算好，原矩阵的数值应该对应到新的旋转矩阵的那个位置，设计好公式就很容易计算了。
 有图好理解，矩阵如下图：
 
 有两个思路：
 1 原矩阵计算出各个数值在新矩阵中的位置，然后一步到位转换成新的旋转矩阵
 2 原矩阵到转置矩阵是很容易计算的，那么从转置矩阵到选择矩阵就只需要reverse每行的元素就可。
 
 * Primary idea: Go from clockwise and from outside to inside, use offset for convenience
 *
 * Time Complexity: O(n^2), Space Complexity: O(1)
 */

class RotateImage {
     static func rotate(inout matrix: [[Int]]) {
        let n = matrix.count
        
        guard n > 0 else {
            return
        }
        
        var start = 0
        var end = 0
        var offset = 0
        var temp = 0
        
        for layer in 0 ..< n / 2 {
            start = layer
            end = n - 1 - layer
            
            for i in start ..< end {
                offset = i - start
                temp = matrix[start][i]
                
                // left -> top
                matrix[start][i] = matrix[end - offset][start]
                
                // bottom -> left
                matrix[end - offset][start] = matrix[end][end - offset]
                
                // right -> bottom
                matrix[end][end - offset] = matrix[i][end]
                
                // top -> right
                matrix[i][end] = temp
            }
        }
    }
}