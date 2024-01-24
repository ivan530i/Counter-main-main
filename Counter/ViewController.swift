//
//  ViewController.swift
//  Counter
//
//  Created by Ivan Pchelnikov on 05.01.2024.
//

import UIKit

class ViewController: UIViewController {
     @IBOutlet private weak var label1: UILabel!
    
     @IBOutlet private weak var textView: UITextView!
    
    var amountOfPresses = Int()
    var nothing: Int = 0
    
    
     @IBAction private func button(_ sender: Any) {
        amountOfPresses += 1
        
        label1.text = "Значение счетчика: \(amountOfPresses)"
        
        let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "[yyyy-MM-dd HH:mm:ss]"
            let currentDate = Date()
            let formattedDate = dateFormatter.string(from: currentDate)
            textView.text += "\(formattedDate): значение изменено на +1\n"
        
        textView.scrollRangeToVisible(NSRange(location: textView.text.count, length: 0))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = "История изменений:\n"
    }
    
    @IBAction private func buttonMinus(_ sender: Any) {
        amountOfPresses -= 1
        if amountOfPresses >= 0 {
            label1.text = "Значение счетчика: \(amountOfPresses)"
        } else {
            amountOfPresses = -1
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "[yyyy-MM-dd HH:mm:ss]"
        let currentDate = Date()
        let formattedDate = dateFormatter.string(from: currentDate)
        
        if amountOfPresses >= 0 {
            textView.text += "\(formattedDate): значение изменено на -1\n"
        }else if amountOfPresses == -1 {
            amountOfPresses += 1
            textView.text += "\(formattedDate):попытка уменьшить значение счётчика ниже 0\n"
        }
    
        
        
        textView.scrollRangeToVisible(NSRange(location: textView.text.count, length: 0))
    }
    
    @IBAction private func buttonZero(_ sender: Any) {
        amountOfPresses = 0
        label1.text = "Значение счетчика: \(amountOfPresses)"
        
        let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "[yyyy-MM-dd HH:mm:ss]"
            let currentDate = Date()
            let formattedDate = dateFormatter.string(from: currentDate)
            textView.text += "\(formattedDate): значение сброшено\n"
        
        textView.scrollRangeToVisible(NSRange(location: textView.text.count, length: 0))
    }
    
    
    
    }
    
    
    

