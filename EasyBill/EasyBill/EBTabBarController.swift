//
//  EBTabBarController.swift
//  EasyBill
//
//  Created by tsaievan on 26/3/18.
//  Copyright © 2018年 tsaievan. All rights reserved.
//

import UIKit
import ObjectMapper

class EBTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        setupChildControllers()
    }
}

extension EBTabBarController {
    fileprivate func setupChildControllers() {
        guard let path = Bundle.main.path(forResource: "EBViewControllers.json", ofType: nil),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
            let vcInfoData = try? JSONSerialization.jsonObject(with: data, options: .allowFragments),
            let vcInfoArray = vcInfoData as? [[String : Any]] else {
                return
        }
        for vcInfo in vcInfoArray {
            if let model = EBVcModel(JSON: vcInfo) {
                let klsName = Bundle.bundleName() + "." + (model.className ?? "")
                guard let kls = NSClassFromString(klsName),
                    let ks = kls.alloc() as? UIViewController else {
                        break
                }
                ks.title = model.title
                addChildViewController(ks)
            }
        }
    }
}
