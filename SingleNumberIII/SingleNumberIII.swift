//
//  SingleNumberIII.swift
//  SingleNumberIII
//
//  Created by hua on 16/9/6.
//  Copyright © 2016年 212. All rights reserved.
//

import Foundation

/**
 原文：
 * Given an array of numbers nums, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once.
 
 For example:
 
 Given nums = [1, 2, 1, 3, 2, 5], return [3, 5].
 
 Note:
 The order of the result is not important. So in the above example, [5, 3] is also correct.
 Your algorithm should run in linear runtime complexity. Could you implement it using only constant space complexity?

 *
 思路：
 为那道解法是可以准确的找出只出现了一次的数字，但前提是其他数字必须出现两次才行。而这题有两个数字都只出现了一次，那么我们如果能想办法把原数组分为两个小数组，不相同的两个数字分别在两个小数组中，这样分别调用Single Number 单独的数字的解法就可以得到答案。那么如何实现呢，首先我们先把原数组全部异或起来，那么我们会得到一个数字，这个数字是两个不相同的数字异或的结果，我们取出其中任意一位为‘1’的位，为了方便起见，我们用 a &= -a 来取出最右端为‘1’的位，然后和原数组中的数字挨个相与，那么我们要求的两个不同的数字就被分到了两个小组中，分别将两个小组中的数字都异或起来，就可以得到最终结果了
 */



class Solution {
    static func singleNumber(nums: [Int]) -> [Int] {
        
        //1,找到两个数的异或
        var diff = 0
        for num in nums {
            diff ^= num
        }
        //2,设置得到最后的bit
        diff &= -diff
        
        //3,返回数组的2个号码
        var ans : [Int] = [0,0]

        for num in nums {
            //bit 没有设置
            if (num & diff) == 0 {
                ans[0] ^= num
            } else {
                //该bit设置
                ans[1] ^= num
            }
        }
        
        return ans
    }
}