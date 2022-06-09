//
//  ViewController.swift
//
//
//  Created by Mina on 2022/05/28.
//

import UIKit

class ViewController: UIViewController {
    
    // 四則演算を行うときの状態
    enum Status {
        case plus
        case minus
        case times
        case divide
        case none
    }
        
    @IBOutlet weak var resultLabel: UILabel!
    
    
    let numbers: Array<String> = ["0","1","2","3","4","5","6","7","8","9"]
    
    var status: Status = .none
    
    // １番目の入力値ラベル
    var numberLabel1: String = ""
    // 2番目の入力値ラベル
    var numberLabel2: String = ""
    
    // 最初の入力値
    var firstNumber: Double = 0.0
    // 入力後の次の入力値
    var nextNumber: Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.layer.borderWidth = 3.0
        resultLabel.layer.borderColor = UIColor.black.cgColor
        resultLabel.text = numbers[0]
    }


    func notInput() {
        // 初期値を設定していない場合は処理を抜ける
        if firstNumber == 0.0 {
            return
        }
    }
    
    func notResult() {
        return
    }
    
    
    func alreadyInmputFirstNuber() {
        // 1回目の入力値が既に入っていた場合、notInputが走る
        if numberLabel1 == "" {
            notInput()
        }
        
        numberLabel1 = String(firstNumber)
    }
    
    // MARK: functionButtons
    @IBAction func cancelButton(_ sender: Any) {
        numberLabel1 = ""
        numberLabel2 = ""
        firstNumber = 0
        nextNumber = 0
        status = .none
        resultLabel.text = numbers[0]
    }
    
    @IBAction func resultButton(_ sender: Any) {
        
        // 数値を何も入力していない状態で"="を押すとnotInput()が走る
        if firstNumber ==  0.0 && nextNumber ==  0.0 {
            notInput()
        }
        
        let resultTotalString: String?
        
        switch status {
        case .plus:
            resultLabel.text = String(firstNumber + nextNumber)
          //  resultTotalString = resultLabel.text
        case .minus:
            resultLabel.text = String(firstNumber - nextNumber)
          //  resultTotalString = resultLabel.text
        case .times:
            resultLabel.text = String(firstNumber * nextNumber)
         //   resultTotalString = resultLabel.text
        case .divide:
            resultLabel.text = String(firstNumber / nextNumber)
         //   resultTotalString = resultLabel.text
        default:
            break
        }
    }
    
    @IBAction func plusButton(_ sender: Any) {
        alreadyInmputFirstNuber()
        status = .plus
    }
    
    @IBAction func minusButton(_ sender: Any) {
        alreadyInmputFirstNuber()
        status = .minus
    }
    @IBAction func timesButton(_ sender: Any) {
        alreadyInmputFirstNuber()
        status = .times
    }
    
    @IBAction func divideButton(_ sender: Any) {
        alreadyInmputFirstNuber()
        status = .divide
    }
    
    // 小数点
    @IBAction func pointButton(_ sender: Any) {
    }
    
    // MARK: numbersButton
    @IBAction func numberOftype(_ sender: UIButton) {
        
        print(sender.tag)
        
    }
}
