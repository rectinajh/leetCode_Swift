//
//  ViewController.swift
//  NumberOfArithmeticSlices
//
//  Created by hua on 16/10/9.
//  Copyright © 2016年 212. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var input :[Int] = [1,2,3,4]
        
        var test = Solution.numberOfArithmeticSlices(input)
        
        let case0 :[Int] = [1,2,3,4]
        let case1 = [2, 4, 6, 7, 8]
        let case2 = [2, 7, 11, 15]
        let case3 = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
        var test0 = Solution.numberOfArithmeticSlices(case0)
        var test1 = Solution.numberOfArithmeticSlices(case1)
        var test2 = Solution.numberOfArithmeticSlices(case2)
        var test3 = Solution.numberOfArithmeticSlices(case3)
        
        print(test0)
        print(test1)
        print(test2)
        print(test3)
     
        
    }

}

