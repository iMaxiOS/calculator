//
//  ViewController.swift
//  Calculator
//
//  Created by iMaxiOS on 7/3/18.
//  Copyright © 2018 Maxim Granchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlet`s

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var themeSwitch: UISwitch!
    @IBOutlet weak var inputCardView: UIView!
    @IBOutlet weak var billAmountTextField: BillAmountTextField!
    @IBOutlet weak var tipPercentSegmentedControl: UISegmentedControl!
    @IBOutlet weak var outputCardView: UIView!
    @IBOutlet weak var tipAmountTitleLabel: UIStackView!
    @IBOutlet weak var tipAmountLabel: UIStackView!
    @IBOutlet weak var totalAmountTitleLabel: UIStackView!
    @IBOutlet weak var totalAmountLabel: UIStackView!
    @IBOutlet weak var resedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        billAmountTextField.buttonTapAction = {
            guard let billAmountText = self.billAmountTextField.text else { return }
            print("Bill Amount: \(billAmountText)")
//            print("Bill Amount: \(self.billAmountTextField.text ?? "Error")")
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        billAmountTextField.resignFirstResponder()
    }
    
    //MARK: - IBAction

    @IBAction func themeToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("On")
        } else {
            print("Off")
        }
    }
    
    @IBAction func tipPercentChanged(_ sender: UISegmentedControl) {
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        print("resed Tapped")
    }
}

