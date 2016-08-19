//
//  Frequent_Elements.swift
//  Frequent_Elements
//
//  Created by hua on 16/8/19.
//  Copyright © 2016年 212. All rights reserved.
//

import Foundation


/*
 Given a non-empty array of integers, return the k most frequent elements.
 前K个高频元素
 
 For example,
 Given [1,1,1,2,2,3] and k = 2, return [1,2].
 
 Note:
 
 You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
 Your algorithm's time complexity must be better than O(n log n), where n is the array's size.
 
 
 
 这道题给了我们一个数组，让我们统计前k个高频的数字，那么对于这类的统计数字的问题，首先应该考虑用哈希表来做，建立数字和其出现次数的映射，然后再按照出现次数进行排序。我们可以用堆排序来做，使用一个最大堆来按照映射次数从大到小排列*/

class Solution {
    
    func topKFrequent(nums: [Int], _ k: Int) -> [Int] {
        var map = [Int: Int]()
        
        for num in nums {
            guard let times = map[num] else {
                map[num] = 1
                continue
            }
            map[num] = times + 1
        }
        map.keys
        var keys = Array(map.keys)
        keys.sortInPlace() {
            let value1 = map[$0]
            let value2 = map[$1]
            return value1 > value2
        }
        
        return Array(keys[0 ..< k])
    }
}

