//
//  Next_Permutation.swift
//  Next_Permutation
//
//  Created by hua on 16/9/1.
//  Copyright © 2016年 212. All rights reserved.
//

import Foundation

/*
 原文
 https://leetcode.com/problems/next-permutation/
 
 #31 Next Permutation
 
 Level: medium
 
 Implement next permutation, which rearranges numbers into the lexicographically next greater permutation of numbers.
 
 If such arrangement is not possible, it must rearrange it as the lowest possible order (ie, sorted in ascending order).
 
 The replacement must be in-place, do not allocate extra memory.
 
 Here are some examples. Inputs are in the left-hand column and its corresponding outputs are in the right-hand column.
 1,2,3 → 1,3,2
 3,2,1 → 1,2,3
 1,1,5 → 1,5,1
 
 翻译
 实现“下一个排列”函数，将排列中的数字重新排列成字典序中的下一个更大的排列。
 
 如果这样的重新排列是不可能的，它必须重新排列为可能的最低顺序（即升序排序）。
 
 重排必须在原地，不分配额外的内存。
 
 以下是一些示例，左侧是输入，右侧是输出：
 
 1，2，3 → 1，3，2
 3，2，1 → 1，2，3
 1，1，5 → 1，5，1
 
 题意
 比如“1，2，3”的全排列，依次是：
 
 1 2 3
 1 3 2
 2 1 3
 2 3 1
 3 1 2
 3 2 1
 所以题目的意思是，从上面的某一行重排到期下一行，如果已经是最后一行了，则重排成第一行。
 
 但是也不能根据给出的数组中的数字列出所有排列，因为要求不能占用额外的空间
 
 
 分析
 比如：
 6 5 4 8 7 5 1
 
 一开始没看对方的后面介绍，就自己在想这个排列的下一个排列是怎样的。
 
 首先肯定从后面开始看，1和5调换了没有用。
 
 7、5和1调换了也没有效果，因此而发现了8、7、5、1是递减的。
 
 如果想要找到下一个排列，找到递增的位置是关键。
 
 因为在这里才可以使其增长得更大。
 
 于是找到了4，显而易见4过了是5而不是8或者7更不是1。
 
 因此就需要找出比4大但在这些大数里面最小的值，并将其两者调换。
 
 那么整个排列就成了：6 5 5 8 7 4 1
 
 然而最后一步将后面的8 7 4 1做一个递增。
 
 
 代码
 扩展
 
 
 Inspired by JESUS
 */

class Solution {
    class func reverseInplace(inout nums: [Int], start : Int,end : Int) {
    if start > end {
        return
    }
        for i in start ..< (start + end) / 2 {
            swap(&nums[i], &nums[start + end - i])
        }
    }
    
    class func nextPermutation(inout nums: [Int]) {
        let length: Int = nums.count
        if length < 2 {
            return
        }
        
        var index : Int = nums.count - 1
        while index > 0 {
            if nums[index - 1] < nums[index] {
                break
            }
            index -= 1
        }
        if index == 0 {
           reverseInplace(&nums, start: 0, end: length - 1)
        } else {
            let  value : Int = nums[index - 1]
            var i : Int = length  - 1
            while i >= index {
                if nums[i] > value {
                    break
                }
                i -= 1
            }
            swap(&nums[i], &nums[index-1])
            reverseInplace(&nums, start: index, end: length - 1)

        }
    }
    
}

