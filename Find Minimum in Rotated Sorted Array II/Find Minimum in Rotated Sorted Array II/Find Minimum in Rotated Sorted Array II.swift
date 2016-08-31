//
//  Find Minimum in Rotated Sorted Array II.swift
//  Find Minimum in Rotated Sorted Array II
//
//  Created by hua on 16/8/31.
//  Copyright © 2016年 212. All rights reserved.
//

import Foundation

/**
 
 Suppose a sorted array is rotated at some pivot unknown to you beforehand.
 (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
 You are given a target value to search. If found in the array return its index, otherwise return -1.
 You may assume no duplicate exists in the array.
 
 这道题目中元素会有重复的情况出现。不过正是因为这个条件的出现，影响到了算法的时间复杂度。原来我们是依靠中间和边缘元素的大小关系，来判断哪一半是不受rotate影响，仍然有序的。而现在因为重复的出现，如果我们遇到中间和边缘相等的情况，我们就无法判断哪边有序，因为哪边都有可能有序。假设原数组是{1,2,3,3,3,3,3}，那么旋转之后有可能是{3,3,3,3,3,1,2}，或者{3,1,2,3,3,3,3}，这样的我们判断左边缘和中心的时候都是3，我们并不知道应该截掉哪一半。解决的办法只能是对边缘移动一步，直到边缘和中间不在相等或者相遇，这就导致了会有不能切去一半的可能。所以最坏情况就会出现每次移动一步，总共移动n此，算法的时间复杂度变成O(n)。
 
 
 * Question Link: https://leetcode.com/problems/find-minimum-in-rotated-sorted-array-ii/
 * Primary idea: Classic Binary Search,二分法
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 
    ＊ inspired by http://blog.csdn.net/linhuanmars/article/details/40449299
 */

class Solution {
    func findMin(nums:[Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = 0
        var minVal = Int.max
        if  nums.count == 0 {
            return 0
        }
        while left + 1 < right {
            mid = (right - left) / 2 + left
            if nums[mid] > nums[left] {
                minVal = min(nums[left], minVal)
                left = mid + 1
            } else if nums[mid] < nums[left] {
                minVal = min(nums[mid], minVal)
                right = mid - 1
            } else {
                left += 1
            }
        }
        
        return min(minVal, nums[left], nums[right])
        
    }
}