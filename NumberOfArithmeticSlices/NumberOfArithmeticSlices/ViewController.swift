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
        
        
        print(test)
     
        
    }

}

