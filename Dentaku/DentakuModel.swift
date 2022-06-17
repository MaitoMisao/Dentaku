//
//  DentakuModel.swift
//  Dentaku
//

import Foundation

struct DentakuModel {
    // 四則演算を行うときの状態
    enum Status {
        case plus
        case minus
        case times
        case divide
        case none
    }
    
    // 足し算のメソッド
    func plusMethod(firstNumber x: Double, nextNumber y: Double) -> String {
        return String(x + y)
    }
    
    // 引き算のメソッド
    func minusMethod(firstNumber x: Int, nextNumber y: Int) -> String {
        return String(x - y)
    }
    
    // 掛け算のメソッド
    func timesMethod(firstNumber x: Int, nextNumber y: Int) -> String {
        return String(x * y)
    }
    // 割り算のメソッド
    func divideMethod(firstNumber x: Int, nextNumber y: Int) -> String {
        return String(x / y)
    }
}



