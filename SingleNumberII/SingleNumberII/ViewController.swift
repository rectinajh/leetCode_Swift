//
//  ViewController.swift
//  SingleNumberII
//
//  Created by hua on 16/8/26.
//  Copyright © 2016年 212. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var test = Solution.singleNumber([5,5,5,4,4,4,5])
        var rest1 = SolutionII.singleNumber([5,5,5,4,4,4,5])
        
        print(test)
        
        print(rest1)

    }


}

