//
//  ViewController.swift
//  Next_Permutation
//
//  Created by hua on 16/9/1.
//  Copyright © 2016年 212. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var input: [Int] = [1, 1, 5]
        let expected: [Int] = [1, 5, 1]
        var result: [Int] = input
        Solution.nextPermutation(&result)
        print(result)
        
    }


}

