//
//   SingleNumberII.swift
//  SingleNumberII
//
//  Created by hua on 16/8/26.
//  Copyright © 2016年 212. All rights reserved.
//

import Foundation

//: Playground - noun: a place where people can play

import UIKit

/*
 Given an array of integers, every element appears three times except for one. Find that single one.
 
 Note:
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 
 Primary idea: Every number has 64 bits, for the i-th bit of each number.
 *               In total, we should have (nums.count) 0s and 1s.
 *               If the i-th bit of the single number is 1, then we should have (3n + 1) 1s, and (3n) 0s.
 *               Otherwise, the i-th bit is 0.
 *               In this way, we can calculate each bit of the single number.
 *
 * Time Complexity: O(n), Space Complexity: O(1)*/

/*
 a != b  ----->  a = a | b  按位或, a 或者 b 只要有一个为 1, 那么，a 的最终结果就为 1
 a &= b  ----->  a = a & b    按位与,a 和 b 二者必须都为 1,那么，a 的最终结果才为 1
 a ^= b  ----->  a = a ^ b    按位异或,当且仅当 a 和 b 的值不一致时，a 的最终结果才为1，否则为0
 
 i = i << 2; //把i里的值左移2位
 
 　　也就是说,1的2进制是000...0001(这里1前面0的个数和int的位数有关,32位机器,gcc里有31个0),左移2位之后变成 000...0100
 
 */
class Solution {
    static func singleNumber(nums: [Int]) -> Int {
        var ans = 0
        var sum = 0
        
        for i in 0 ..< 32 {
            sum = 0
            let tmp = (1 << i)
            for j in 0 ..< nums.count {
                if tmp & nums[j] != 0 {
                    sum = sum + 1
                }
            }
            
            if sum % 3 == 1 {
                ans = ans ^ tmp
            }
        }
        
        return ans
    }
    
}

/*
 因为题目已经说了，除了一个数字以外，其他的都出现了3次，如果我们把那个特殊的数剔除，并把剩下的数于每一位来加和的话，每一位上1出现的次数必然都是3的倍数。所以，解法就在这里，将每一位数字分解到32个bit上，统计每一个bit上1出现的次数。最后对于每一个bit上1出现的个数对3取模，剩下的就是结果。*/

class SolutionII {
    static func singleNumber(nums:[Int]) -> Int {
        var ans = 0
        for i in 0..<32 {
            var c = 0
            let d = (1 << i)
            for j in 0 ..< nums.count {
                if d & nums[j] != 0  {
                    c = c + 1
                }
            }
            if c % 3 == 1 {
                ans = ans | d
            }
            
        }
        
        return ans
    }
    
}




