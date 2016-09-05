//
//  ViewController.swift
//  SimplifyPath
//
//  Created by hua on 16/9/5.
//  Copyright © 2016年 212. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let input: String = "/..."
        let expected: String = "/..."
        
        let result = SimplifyPath.simplifyPath(input)
        
        print(result)
    }


}

