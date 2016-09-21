//
//  ViewController.swift
//  MinWindow
//
//  Created by hua on 16/9/21.
//  Copyright © 2016年 212. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let input: [String] = ["ADOBECODEBANC", "ABC"]
        let expected: String = "BANC"
        
        let result = Solution.minWindow(input[0], t: input[1])
        print(result)
        
        
    }


}

