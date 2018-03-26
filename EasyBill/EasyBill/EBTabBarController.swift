//
//  EBTabBarController.swift
//  EasyBill
//
//  Created by tsaievan on 26/3/18.
//  Copyright © 2018年 tsaievan. All rights reserved.
//

import UIKit

class EBTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupChildControllers()
    }
    
    
}

extension EBTabBarController {
    fileprivate func setupChildControllers() {
        guard let path = Bundle.main.path(forResource: "EBViewControllers.json", ofType: nil),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
        let vcInfo = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) else {
                return
        }
        
    }
}
