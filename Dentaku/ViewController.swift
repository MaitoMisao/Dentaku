//
//  ViewController.swift
//  Dentaku
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
    
    var resultTotalString: String?
    
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
        
        switch status {
        case .plus:
            resultLabel.text = String(firstNumber + nextNumber)
        case .minus:
            resultLabel.text = String(firstNumber - nextNumber)
        case .times:
            resultLabel.text = String(firstNumber * nextNumber)
        case .divide:
            resultLabel.text = String(firstNumber / nextNumber)
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
    @IBAction func zero(_ sender: Any) {
        if numberLabel1 == "" {
            firstNumber = 0
            numberLabel1 += numbers[0]
            resultLabel.text = numberLabel1
        } else if numberLabel1 == String(firstNumber) {
            nextNumber = 0
            numberLabel2 += numbers[0]
            resultLabel.text = numberLabel2
        }
    }
    
    @IBAction func one(_ sender: Any) {
        
        if numberLabel1 == "" {
            firstNumber = 1
            numberLabel1 += numbers[1]
            resultLabel.text = numberLabel1
        } else if numberLabel1 == String(firstNumber) {
            nextNumber = 1
            numberLabel2 += numbers[1]
            resultLabel.text = numberLabel2
        }
    }
    
    @IBAction func two(_ sender: Any) {
        
        if numberLabel1 == "" {
            firstNumber = 2
            numberLabel1 += numbers[2]
            resultLabel.text = numberLabel1
        } else if numberLabel1 == String(firstNumber) {
            nextNumber = 2
            numberLabel2 += numbers[2]
            resultLabel.text = numberLabel2
        }
    }
    
    @IBAction func three(_ sender: Any) {
        if numberLabel1 == "" {
            firstNumber = 3
            numberLabel1 += numbers[3]
            resultLabel.text = numberLabel1
        } else if numberLabel1 == String(firstNumber) {
            nextNumber = 3
            numberLabel2 += numbers[3]
            resultLabel.text = numberLabel2
        }
    }
    
    @IBAction func four(_ sender: Any) {
        if numberLabel1 == "" {
            firstNumber = 4
            numberLabel1 += numbers[4]
            resultLabel.text = numberLabel1
        } else if numberLabel1 == String(firstNumber) {
            nextNumber = 4
            numberLabel2 += numbers[4]
            resultLabel.text = numberLabel2
        }
    }
    
    @IBAction func five(_ sender: Any) {
        if numberLabel1 == "" {
            firstNumber = 5
            numberLabel1 += numbers[5]
            resultLabel.text = numberLabel1
        } else if numberLabel1 == String(firstNumber) {
            nextNumber = 5
            numberLabel2 += numbers[5]
            resultLabel.text = numberLabel2
        }
    }
    @IBAction func six(_ sender: Any) {
        if numberLabel1 == "" {
            firstNumber = 6
            numberLabel1 += numbers[6]
            resultLabel.text = numberLabel1
        } else if numberLabel1 == String(firstNumber) {
            nextNumber = 6
            numberLabel2 += numbers[6]
            resultLabel.text = numberLabel2
        }
    }
    @IBAction func seven(_ sender: Any) {
        if numberLabel1 == "" {
            firstNumber = 7
            numberLabel1 += numbers[7]
            resultLabel.text = numberLabel1
        } else if numberLabel1 == String(firstNumber) {
            nextNumber = 7
            numberLabel2 += numbers[7]
            resultLabel.text = numberLabel2
        }
    }
    
    @IBAction func eight(_ sender: Any) {
        if numberLabel1 == "" {
            firstNumber = 8
            numberLabel1 += numbers[8]
            resultLabel.text = numberLabel1
        } else if numberLabel1 == String(firstNumber) {
            nextNumber = 8
            numberLabel2 += numbers[8]
            resultLabel.text = numberLabel2
        }
    }
    
    @IBAction func nine(_ sender: Any) {
        if numberLabel1 == "" {
            firstNumber = 9
            numberLabel1 += numbers[9]
            resultLabel.text = numberLabel1
        } else if numberLabel1 == String(firstNumber) {
            nextNumber = 9
            numberLabel2 += numbers[9]
            resultLabel.text = numberLabel2
        }
    }
}
