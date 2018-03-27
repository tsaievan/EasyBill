//
//  Bundle+Extensions.swift
//  EasyBill
//
//  Created by tsaievan on 27/3/18.
//  Copyright © 2018年 tsaievan. All rights reserved.
//

import UIKit

extension Bundle {
    class func bundleName() -> String {
        guard let name = Bundle.main.infoDictionary![kCFBundleNameKey as String],
            let nameString = name as? String else {
                return ""
        }
        return nameString
    }
}
