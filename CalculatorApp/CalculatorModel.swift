//
//  CalculatorModel.swift
//  CalculatorApp
//
//  Created by Artem Karmaz on 12/31/18.
//  Copyright © 2018 Johansson Group. All rights reserved.
//

import Foundation

protocol CalculatorProtocol {
    func operationSetNumber(_ numeral: String) -> String
    func operationPlus() -> (String, Int)
    func operationMinus() -> (String, Int)
    func operationDivision() -> (String, Int)
    func operationMultiplication() -> (String, Int)
    func operationClear() -> String
    func operationResult() -> String
}

class Calculator: CalculatorProtocol {
    private var number = 0
    private var result = 0
    private var operand = 0
    
    func operationSetNumber(_ numeral: String) -> String {
        number = Int(String(number) + numeral) ?? 0
        return String(number)
    }
    
    func operationPlus() -> (String, Int) {
        if result == 0 {
            result = number
        } else {
            result &+= number
        }
        number = 0
        operand = 1
        return (String(result), operand)
    }
    
    func operationMinus() -> (String, Int) {
        if result == 0 {
            result = number
        } else {
            result &-= number
        }
        number = 0
        operand = 2
        return (String(result), operand)
    }
    
    func operationDivision() -> (String, Int) {
        if result == 0 {
            result = number
            print("result division = \(result)")
        } else if number == 0 {
            number = result
            print("number on else if - \(number)")
        } else {
            print("res \(result) = \(result) divide on \(number)")
            result &= result / number
        }
        number = 0
        operand = 3
        return (String(result), operand)
    }
    
    func operationMultiplication() -> (String, Int) {
        if result == 0 {
            result = number
        } else if number == 0 {
            number = result
        } else {
            result &*= number
        }
        number = 0
        operand = 4
        return (String(result), 4)
    }
    
    func operationClear() -> String {
        number = 0
        result = 0
        operand = 0
        print("Clear succesfull!")
        return "0"
    }
    
    func operationResult() -> String {
        switch operand {
        case 1:
            result &+= number
            number = 0
        case 2:
            result &-= number
            number = 0
        case 3:
            print("result divide in operRes \(result), number is \(number)")
            if number == 0 {
                break
            } else {
            result /= number
            number = 0
            }
        case 4:
            result &*= number
            number = 0
        default:
            ()
        }
        print("result is \(result)")
        return String(result)
    }
    
}
