//
//  CalculatorModel.swift
//  CalculatorApp
//
//  Created by Artem Karmaz on 12/31/18.
//  Copyright © 2018 Johansson Group. All rights reserved.
//

import Foundation

protocol CalculatorProtocol {
    func operationPlus() -> Double
    func operationMinus() -> Double
    func operationDivision() -> Double
    func operationMultiplication() -> Double
    func operationClear() -> String
}

class Calculator: CalculatorProtocol {
    
    var result = 0
    var operand = 0
    
    func operationPlus() -> Double {
        return 0.0
    }
    
    func operationMinus() -> Double {
        return 0.0
    }
    
    func operationDivision() -> Double {
        return 0.0
    }
    
    func operationMultiplication() -> Double {
        return 0.0
    }
    
    func operationClear() -> String {
        result = 0
        operand = 0
        print("Clear succesfull")
        return "0"
    }
    
}
