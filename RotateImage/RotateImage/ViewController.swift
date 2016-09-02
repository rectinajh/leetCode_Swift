//
//  ViewController.swift
//  RotateImage
//
//  Created by hua on 16/9/2.
//  Copyright © 2016年 212. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var input: [[Int]] = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]
        ]
        var expected: [[Int]] = [
            [7, 4, 1],
            [8, 5, 2],
            [9, 6, 3]
        ]
        
        
        var test = input
        RotateImage.rotate(&test)
        print(test)
        
    }


}

