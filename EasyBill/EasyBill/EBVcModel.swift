//
//  EBVcModel.swift
//  EasyBill
//
//  Created by tsaievan on 26/3/18.
//  Copyright © 2018年 tsaievan. All rights reserved.
//

import UIKit
import ObjectMapper

class EBVcModel: Mappable {
    var className: String?
    var title: String?
    var imageName: String?
    var selectedimageName: String?
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        className               <- map["className"]
        title                   <- map["title"]
        imageName               <- map["imageName"]
        selectedimageName       <- map["selectedimageName"]
    }
}
