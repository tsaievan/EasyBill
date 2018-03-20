//
//  ViewController.swift
//  EasyBill
//
//  Created by tsaievan on 19/3/18.
//  Copyright © 2018年 tsaievan. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let image = UIImage(named: "") else {
            return
        }
        let page = PDFPage(image: image)
        let pageView = PDFView(frame: UIScreen.main.bounds)
        pageView.backgroundColor = .red
        view.addSubview(pageView);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

