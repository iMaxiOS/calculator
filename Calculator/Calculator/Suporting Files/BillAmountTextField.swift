//
//  BillAmountTextField.swift
//  Calculator
//
//  Created by iMaxiOS on 7/4/18.
//  Copyright © 2018 Maxim Granchenko. All rights reserved.
//

import Foundation
import UIKit

class BillAmountTextField: UITextField {
    
    var calculateButtonAction: (() -> Void)?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let toolbar: UIToolbar = UIToolbar()
        
        let leadingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let trainingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let calculateButton = UIBarButtonItem(title: "Calculate Tip", style: .done, target: self, action: #selector(doneButtonTapped(_:)))
        
        toolbar.items = [leadingFlex, calculateButton, trainingFlex]
        
        toolbar.sizeToFit()
        
        self.inputAccessoryView = toolbar
    }
    
    @objc func doneButtonTapped(_ sender: UIBarButtonItem) {
        calculateButtonAction?()
    }
    
}




































