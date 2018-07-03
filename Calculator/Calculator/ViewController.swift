//
//  ViewController.swift
//  Calculator
//
//  Created by iMaxiOS on 7/3/18.
//  Copyright © 2018 Maxim Granchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var themeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }

    @IBAction func themeToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("On")
        } else {
            print("Off")
        }
    }
    
}

