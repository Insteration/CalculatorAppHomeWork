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
                calculatorLabelText.text = calculator.operationSetNumber("0")
            } else {
                calculatorLabelText.text = calculator.operationSetNumber(String(calculatorNumber + 1))
            }
        }
    }
    
    @IBAction func calculatorMathmaticalOperationButton(_ sender: UIButton) {
        if let calculatorMathmaticalOperation = calculatorMathmaticalOperations.index(of: sender) {
            switch calculatorMathmaticalOperation {
            case 0:
                _ = calculator.operationPlus()
            case 1:
                _ = calculator.operationMinus()
            case 2:
                _ = calculator.operationMultiplication()
            case 3:
                _ = calculator.operationDivision()
            case 4:
                calculatorLabelText.text = calculator.operationResult()
            default:
                ()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

