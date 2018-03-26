//
//  EBPicture.swift
//  EasyBill
//
//  Created by tsaievan on 26/3/18.
//  Copyright © 2018年 tsaievan. All rights reserved.
//

import UIKit
import CoreData

final class EBPicture: NSManagedObject {
    @NSManaged fileprivate(set) var date: Date
    
    @NSManaged fileprivate(set) var name: String
    
    @NSManaged fileprivate(set) var detailDescription: String
}

