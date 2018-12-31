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
    func operationPlus() -> Double
    func operationMinus() -> Double
    func operationDivision() -> Double
    func operationMultiplication() -> Double
    func operationClear() -> String
    func operationResult() -> String
}

class Calculator: CalculatorProtocol {
    var number = 0 {
        didSet {
            print(oldValue)
        }
    }
    var result = 0
    var operand = 0
    
    func operationSetNumber(_ numeral: String) -> String {
        number = Int(String(number) + numeral) ?? 0
        return String(number)
    }
    
    
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
    func operationResult() -> String {
        return ""
    }
    
}

//struct Calculate {
//    var number = 0 {
//        didSet {
//            print(oldValue)
//        }
//    }
//    var result = 0
//    var tmp = 0
//
//    mutating func setNumber(_ numeral: String) -> String {
//        number = Int(String(number) + numeral) ?? 0
//        return String(number)
//    }
//
//    mutating func pressPlus() -> String {
//        if result == 0 {
//            result = number
//        } else {
//            result &+= number
//        }
//        number = 0
//        return String(result)
//    }
//
//    mutating func pressMinus() -> String {
//        if result == 0 {
//            result = number
//        } else {
//            result &-= number
//            tmp = result
//        }
//        number = 0
//        return String(result)
//    }
//
//    mutating func getResult() -> String {
//        result &+= number
//        number = 0
//        return String(tmp)
//    }
//
//
//    mutating func pressAc() -> String {
//        number = 0
//        result = 0
//        return "0"
//    }
//}
