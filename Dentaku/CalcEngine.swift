//
//  File.swift
//  Dentaku
//
//  Created by 越智修司 on 2022/06/16.
//

import Foundation

class CalcEngine {
    enum Mode {
        case none
        case plus
        case minus
        case div
        case mul
        // 本当は、桁あふれ、0除算などを考慮して.error状態が必要
    }
    var displayedResult:String {
        get{
            return _displayedResult
        }
        set {
            callBack?( newValue)
            _displayedResult = newValue

        }
    }

    var _displayedResult: String = "0" // ユーザの入力と＝ボタンで確定した計算結果を保存
    var internalRegister: String = "0"  // これまでの計算結果を保存
    var mode :Mode = .none
    var callBack : ((String)->Void)? = nil
    func number(input:Int){ //
        // UIで制限される前提なので、0〜9以外の整数が入る場合は考慮しない。呼び出す側の責任で入力値をチェックすること
        assert(input >= 0 && input < 10, "UIで制限される前提なので、0〜9以外の整数が入る場合は考慮しない")

        var registerVal = Decimal(string:displayedResult)! // 変換に失敗する場合は今回は考慮しない
        let inputVal = Decimal(input)
        registerVal *= Decimal(10)
        registerVal += inputVal
        displayedResult = "\(registerVal)"
    }

    func plus(){
        if mode == .plus { // 同じボタンを押しても無効
            return
        }
        mode = .plus
        internalRegister = displayedResult
        displayedResult = "0"
    }

    func equal(){
        switch mode {
        case .plus:
            let resultVal = Decimal(string:internalRegister)!
            displayedResult = "\(resultVal + Decimal(string:displayedResult)!)"
            internalRegister = "0"
            mode = .none

        default:
            break
        }
    }
}
