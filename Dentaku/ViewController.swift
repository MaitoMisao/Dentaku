//
//  ViewController.swift
//  Dentaku
//

import UIKit

class ViewController: UIViewController {
    
        
    @IBOutlet weak var resultLabel: UILabel!
    
    
    let numbers: Array<String> = ["0","1","2","3","4","5","6","7","8","9"]
    
    var status: DentakuModel.Status = .none
    
    
    // １番目の入力値ラベル
    var numberLabel1: String = ""
    // 2番目の入力値ラベル
    var numberLabel2: String = ""
   
   //　小数点のフラグ
    var pointMode: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.layer.borderWidth = 3.0
        resultLabel.layer.borderColor = UIColor.black.cgColor
        resultLabel.text = numbers[0]
    }

    
    func alreadyImputFirstNuber() {
        // 1回目の入力値が既に入っていた場合、return
        if numberLabel1 != "" {
            return
        }
    }
    
    // MARK: functionButtons
    @IBAction func cancelButton(_ sender: Any) {
        numberLabel1 = ""
        numberLabel2 = ""
        status = .none
        resultLabel.text = numbers[0]
    }
    
    @IBAction func resultButton(_ sender: Any) {
        
        let result = DentakuModel()
        let firstNumber = Double(numberLabel1)!
        let nextNumber = Double(numberLabel2)!
        
        
        switch status {
        case .plus:
            resultLabel.text = result.plusMethod(firstNumber: firstNumber, nextNumber: nextNumber)
            numberLabel1 = "0"
            numberLabel2 = "0"
        case .minus:
            resultLabel.text = result.minusMethod(firstNumber: firstNumber, nextNumber: nextNumber)
        case .times:
            resultLabel.text = result.timesMethod(firstNumber: firstNumber, nextNumber: nextNumber)
        case .divide:
            resultLabel.text = result.divideMethod(firstNumber: firstNumber, nextNumber: nextNumber)
        default:
            break
        }
        
    }
    
    func inputToNumberLabel2() {
        // 二つ目のラベル入力を行うため、numberLabel2に"0"を代入する
        if resultLabel.text == numberLabel1 {
            numberLabel2 = "0"
        }
    }
    
    @IBAction func plusButton(_ sender: Any) {
        alreadyImputFirstNuber()
        status = .plus
        inputToNumberLabel2()
    }
    
    @IBAction func minusButton(_ sender: Any) {
        alreadyImputFirstNuber()
        status = .minus
        inputToNumberLabel2()
    }
    @IBAction func timesButton(_ sender: Any) {
        alreadyImputFirstNuber()
        status = .times
        inputToNumberLabel2()
    }
    
    @IBAction func divideButton(_ sender: Any) {
        alreadyImputFirstNuber()
        status = .divide
        inputToNumberLabel2()
    }
    
    // 小数点
    @IBAction func pointButton(_ sender: Any) {
        // true falseと交互になる
        pointMode = !pointMode
        if pointMode {
  //          resultLabel.text = String(format: "%.0f", firstNumber) + "."
        }
    }
    
    // MARK: numbersButton
    @IBAction func numeric(_ sender: UIButton) {
        
        // numberLabel1の値が空かつnumberLabel2が空の場合、tagのString型を入れる
        if numberLabel1 == "" && numberLabel2 == "" {
            numberLabel1 = String(sender.tag)
            resultLabel.text = numberLabel1
        // numberLabel1の値がありnumberLabel2が空の場合は連続でStringを表示
        } else if numberLabel1 != "" && numberLabel2 == "" {
            // 2桁以上の表示
            numberLabel1 += String(sender.tag)
            resultLabel.text = numberLabel1
        // numberLabel1の値がありnumberLabel2が"0"の場合は、numberLabel2にtagのString型を入れる
        } else if numberLabel1 == resultLabel.text && numberLabel2 == "0" {
            numberLabel2 = String(sender.tag)
            resultLabel.text = numberLabel2
        } else {
            numberLabel2 += String(sender.tag)
            resultLabel.text = numberLabel2
        }
        
        print("numberLabel1は\(numberLabel1)")
//        if numberLabel2 == "" && numberLabel1 != "" {
//            print("2番目のラベル")
//        }
//        if let button = sender as? UIButton {
//            print("tag-\(button.tag)")
//            // 小数点の実装は不十分
//            if pointMode {
//                let decimal = firstNumber - floor(firstNumber)
//                var i = 1
//                var x = decimal
//                print("decimal-\(decimal)")
//                while x > 0.0 {
//                    x = x * 10 - floor(x * 10)
//                    i += i
//                }
//                firstNumber = floor(firstNumber) + decimal + Double(button.tag) / pow(10.0, Double(i))
//                resultLabel.text = String(format: "%f", firstNumber)
//            } else {
//                firstNumber *= Double(10)
//                firstNumber += Double(button.tag)
//                resultLabel.text = String(format: "%.0f", firstNumber)
//            }
//        }
    }
}
