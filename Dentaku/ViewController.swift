//
//  ViewController.swift
//  Dentaku
//
//  Created by Mina on 2022/05/28.
//

import UIKit

//struct Number {
//    var number: Int
//    init(number: Int) {
//        self.number = number
//    }
//}


class ViewController: UIViewController {
        
    @IBOutlet weak var resultLabel: UILabel!
    
    
    let numbers: Array<String> = ["0","1","2","3","4","5","6","7","8","9"]
    
    var numberLabel1: String = ""
    var numberLabel2: String = ""
    
    var resultString: String?
    
    var firstNumber: Double = 0.0
    var nextNumber: Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.layer.borderWidth = 3.0
        resultLabel.layer.borderColor = UIColor.black.cgColor
        resultLabel.text = numbers[0]
    }


    
    // MARK: functionButtons
    @IBAction func cancelButton(_ sender: Any) {
        numberLabel1 = ""
        numberLabel2 = ""
        resultLabel.text = numbers[0]
    }
    
    @IBAction func resultButton(_ sender: Any) {
        
    }
    
    @IBAction func plusButton(_ sender: Any) {
        
    }
    
    @IBAction func minusButton(_ sender: Any) {
    }
    @IBAction func timesButton(_ sender: Any) {
    }
    
    @IBAction func divideButton(_ sender: Any) {
    }
    
    
    @IBAction func pointButton(_ sender: Any) {
    }
    
    // MARK: numbersButton
    @IBAction func one(_ sender: Any) {
        // 文字列結合
        numberLabel1 += numbers[1]
        resultLabel.text = numberLabel1
        
    }
    
    @IBAction func two(_ sender: Any) {
        numberLabel1 += numbers[2]
        resultLabel.text = numberLabel1
    }
    
    @IBAction func three(_ sender: Any) {
        numberLabel1 += numbers[3]
        resultLabel.text = numberLabel1
    }
    
    @IBAction func four(_ sender: Any) {
        numberLabel1 += numbers[4]
        resultLabel.text = numberLabel1
    }
    
    @IBAction func five(_ sender: Any) {
        numberLabel1 += numbers[5]
        resultLabel.text = numberLabel1
    }
    @IBAction func six(_ sender: Any) {
        numberLabel1 += numbers[6]
        resultLabel.text = numberLabel1
    }
    @IBAction func seven(_ sender: Any) {
        numberLabel1 += numbers[7]
        resultLabel.text = numberLabel1
    }
    
    @IBAction func eight(_ sender: Any) {
        numberLabel1 += numbers[8]
        resultLabel.text = numberLabel1
    }
    
    @IBAction func nine(_ sender: Any) {
        numberLabel1 += numbers[9]
        resultLabel.text = numberLabel1
    }
}

