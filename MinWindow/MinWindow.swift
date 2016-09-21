//
//  MinWindow.swift
//  MinWindow
//
//  Created by hua on 16/9/21.
//  Copyright © 2016年 212. All rights reserved.
//

import Foundation

/*
 
 https://leetcode.com/problems/minimum-window-substring/
 
 #76 Minimum Window Substring
 
 Level: hard
 
 Given a string S and a string T, find the minimum window in S which will contain all the characters in T in complexity O(n).
 
 For example,
 S = "ADOBECODEBANC"
 T = "ABC"
 Minimum window is "BANC".
 
 给定一个字符串S和一个字符串T。找出S中最小的窗口包含了S中所有的字符。
 
 Note:
 If there is no such window in S that covers all characters in T, return the emtpy string "".
 
 If there are multiple such windows, you are guaranteed that there will always be only one unique minimum window in S.
 思路：
 
 首先我们需要记录T中的字符，因为每个字符可能出现多次，所以我们需要记录该字符对应的个数。不妨使用256位的数组当做哈希表。统计T中每个字符出现的次数。然后，我们使用两个指针，初始化时第一个指针指向了S中的第一个元素，然后让第二个指针从第一个指针的位置开始往后扫描，直到找到能够了T中所有的字符，然后往后移动第一个指针来缩小这个窗口，截止条件是不能满足T中所有的字符出现的次数。此时继续往后移动第二个指针。一直到第二个指针移动到字符串末尾。
 
 可以利用两个指针扫描（两个指针分别为start，i），以S = “e b a d b a c c b”（忽略空格），T = “abc”为例：
 
 0 1 2 3 4 5 6 7 8
 
 初始化 start = i = 0
 i 逐渐往后扫描S直到窗口S[start…i]包含所有T的字符，此时i = 6（字符c的位置）
 缩减窗口：此时我们注意到窗口并不是最小的，需要调整 start 来缩减窗口。缩减规则为：如果S[start]不在T中 或者 S[start]在T中但是删除后窗口依然可以包含T中的所有字符，那么start = start+1， 直到不满足上述两个缩减规则。缩减后i即为窗口的起始位置，此例中从e开始窗口中要依次删掉e、b、a、d，start最后等于4 ，那么得到一个窗口大小为6-4+1 = 3
 start = start+1(此时窗口肯定不会包含所有的T中的字符)，跳转到步骤2继续寻找下一个窗口。本例中还以找到一个窗口start = 5，i = 8，比上个窗口大，因此最终的最小窗口是S[4…6]
 
 */


private extension String {
    subscript (index: Int) -> Character {
        return self.characters[self.startIndex.advancedBy(index)]
    }
}

class Solution {
    static func minWindow(s: String, t: String) -> String {
        if s.isEmpty || t.isEmpty {
            return ""
        }
        var count = t.characters.count
        var charCountDict: Dictionary<Character, Int> = Dictionary()
        var charFlagDict: Dictionary<Character, Bool> = Dictionary()
        for ii in 0 ..< count {
            if let charCount = charCountDict[t[ii]] {
                charCountDict[t[ii]] = charCount + 1
            } else {
                charCountDict[t[ii]] = 1
            }
            charFlagDict[t[ii]] = true
        }
        var i = -1
        var j = 0
        var minLen = Int.max
        var minIdx = 0
        while i < s.characters.count && j < s.characters.count {
            if count > 0 {
                i += 1
                if i == s.characters.count {
                    continue
                }
                if let charCount = charCountDict[s[i]] {
                    charCountDict[s[i]] = charCount - 1
                } else {
                    charCountDict[s[i]] = -1
                }
                if charFlagDict[s[i]] == true && charCountDict[s[i]] >= 0 {
                    count -= 1
                }
            } else {
                if minLen > i - j + 1 {
                    minLen = i - j + 1
                    minIdx = j
                }
                if let charCount = charCountDict[s[j]] {
                    charCountDict[s[j]] = charCount + 1
                } else {
                    charCountDict[s[j]] = 1
                }
                if charFlagDict[s[j]] == true && charCountDict[s[j]] > 0 {
                    count += 1
                }
                j += 1
            }
        }
        if minLen == Int.max {
            return ""
        }
        
        let range : NSRange = NSMakeRange(minIdx, minLen)
        let range1 : NSString = s
        return range1.substringWithRange(range)
        
    }
}