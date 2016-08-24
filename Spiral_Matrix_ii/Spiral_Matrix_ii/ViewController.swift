//
//  ViewController.swift
//  Spiral_Matrix_ii
//
//  Created by hua on 16/8/18.
//  Copyright © 2016年 212. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        let result = Solution_I()
        let test  = result.generateMatrix(3)
        print(test)
        
        
        
        
        let result1 = Solution_II()
        let test2  = result1.generateMatrix(3)
        print(test2)
        
        
        
        
        
    }
}

