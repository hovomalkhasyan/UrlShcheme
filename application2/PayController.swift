//
//  PayController.swift
//  application2
//
//  Created by Hovo on 8/10/20.
//  Copyright © 2020 Hovo. All rights reserved.
//

import UIKit

class PayController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func payAction(_ sender: UIButton) {
        guard let url = URL(string: "\(SceneDelegate.scheme)://payment?status=1&total=1000&currency=EUR") else {return}
        UIApplication.shared.open(url) { (result) in
            if result {
            }
        }
    }
    
    @IBAction func cancelAction(_ sender: UIButton) {
        guard let url = URL(string: "\(SceneDelegate.scheme)://cancel?status=0") else {return}
        UIApplication.shared.open(url) { (result) in
            if result {
            }
        }
    }
}
