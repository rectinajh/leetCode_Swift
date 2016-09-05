//
//  SimplifyPath.swift
//  SimplifyPath
//
//  Created by hua on 16/9/5.
//  Copyright © 2016年 212. All rights reserved.
//

import Foundation
/*
 
 https://leetcode.com/problems/simplify-path/
 
 #71 Simplify Path
 
 Level: medium
 原文：
 Given an absolute path for a file (Unix-style), simplify it.
 
 For example,
 path = "/home/", => "/home"
 path = "/a/./b/../../c/", => "/c"
 
 Corner Cases:
 Did you consider the case where path = "/../"?
 In this case, you should return "/".
 Another corner case is the path might contain multiple slashes '/' together, such as "/home//foo/".
 In this case, you should ignore redundant slashes and return "/home/foo".
 
 翻译：
 可以知道中间是"."的情况直接去掉，是".."时删掉它上面挨着的一个路径，而下面的边界条件给的一些情况中可以得知，如果是空的话返回"/"，如果有多个"/"只保留一个。那么我们可以把路径看做是由一个或多个"/"分割开的众多子字符串，把它们分别提取出来一一处理即可
 
 思路：
 这道题目是Linux内核中比较常见的一个操作，就是对一个输入的文件路径进行简化。思路比较明确，就是维护一个栈，对于每一个块（以‘/’作为分界）进行分析，如果遇到‘../’则表示要上一层，那么就是进行出栈操作，如果遇到‘./’则是停留当前，直接跳过，其他文件路径则直接进栈即可。最后根据栈中的内容转换成路径即可（这里是把栈转成数组，然后依次添加）。时间上不会超过两次扫描（一次是进栈得到简化路径，一次是出栈获得最后结果），所以时间复杂度是O(n)，空间上是栈的大小，也是O(n)。
 
 解法：
 利用栈的特性，如果sub string element
 1. 等于“/”，跳过，直接开始寻找下一个element
 2. 等于“.”，什么都不需要干，直接开始寻找下一个element
 3. 等于“..”，弹出栈顶元素，寻找下一个element
 4. 等于其他，插入当前elemnt为新的栈顶，寻找下一个element
 
 最后，再根据栈的内容，重新拼path。这样可以避免处理连续多个“/”的问题。
 
 Inspired at http://fisherlei.blogspot.com/2013/01/leetcode-simplify-path.html
 
 */

class SimplifyPath {
    static func simplifyPath(path: String) -> String {
        var res = ""
        var stack = [String]()
        let paths = path.characters.split {$0 == "/"}.map(String.init)
        
        for path in paths {
            var path = path.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            
            guard path != "." else {
                continue
            }
            
            if path == ".." {
                if stack.count > 0 {
                    stack.removeLast()
                }
            } else if path.characters.count > 0 {
                stack.append(path)
            }
            
        }
        
        for str in stack {
            res += "/"
            res += str
        }
        
        return res.isEmpty ? "/" : res
    }
}

