//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Artem Karmaz on 12/31/18.
//  Copyright © 2018 Johansson Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculator: CalculatorProtocol = Calculator()
    
    @IBOutlet weak var calculatorLabelText: UILabel!
    @IBOutlet var calculatorNumbers: [UIButton]!
    @IBOutlet var calculatorMathmaticalOperations: [UIButton]!
    
    @IBAction func calculatorClearButton(_ sender: UIButton) {
       calculatorLabelText.text = calculator.operationClear()
    }
    
    @IBAction func calculatorNumbersPressButton(_ sender: UIButton) {
        if let calculatorNumber = calculatorNumbers.index(of: sender) {
            if calculatorNumber == 9 {
                calculatorLabelText.text = "0"
            } else {
                calculatorLabelText.text = String(calculatorNumber + 1)
            }
        }
    }
    
    @IBAction func calculatorResultButton(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

