//
//  ViewController.swift
//  SingleNumberIII
//
//  Created by hua on 16/9/6.
//  Copyright © 2016年 212. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        let input : [Int] = [1,2,1,3,2,5]
        let test = Solution.singleNumber(input)
        print(test)
        
    }

}

