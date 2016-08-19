//
//  ViewController.swift
//  Frequent_Elements
//
//  Created by hua on 16/8/19.
//  Copyright © 2016年 212. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var test = Solution()
        var result = test.topKFrequent([2,2,8,3,3,2,2,1,3], 2)
        print(result)

   }

}
