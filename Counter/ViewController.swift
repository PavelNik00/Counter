//
//  ViewController.swift
//  Counter
//
//  Created by Pavel Nikipelov on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var labelText: UILabel!
    @IBOutlet private weak var label: UILabel!
    
    @IBOutlet private weak var minusButton: UIButton!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var nullButton: UIButton!
    
    @IBOutlet private weak var textView: UITextView!
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        plusButton.backgroundColor = .systemRed
        minusButton.backgroundColor = .systemBlue
        nullButton.backgroundColor = .systemGray
        label.textColor = .systemBlue
        labelText.textColor = .black
        
        textView.text = "История изменений:"
        textView.font = UIFont.systemFont(ofSize: 18)
    }
    
    @IBAction private func plusAction(_ sender: Any) {
        if count >= 0 {
            count = count + 1
        } else {
            print(count)
        }
        label.text = "\(count)"
        label.textColor = .systemRed
        textView.text = textView.text + "\n[\(Date().displayFormat)]: значение изменено на +1"
        print("Значение счётчика: \(count)")
    }
    
    @IBAction private func minusAction(_ sender: Any) {
        if count >= 1 {
            count = count - 1
            textView.text = textView.text + "\n[\(Date().displayFormat)]: значение изменено на -1"
        } else {
            print(count)
            textView.text = textView.text + "\n[\(Date().displayFormat)]: попытка уменьшить значение счётчика ниже 0"
        }
        label.text = "\(count)"
        label.textColor = .systemBlue
        print("Значение счётчика: \(count)")
    }
    
    @IBAction private func nullAction(_ sender: Any) {
        count = 0
        label.text = "\(count)"
        label.textColor = .systemBlue
        textView.text = textView.text + "\n[\(Date().displayFormat)]: значение сброшено"
        print("Значение счётчика: \(count)")
    }
}

extension Date {
    var displayFormat: String {
        self.formatted(date: .numeric, time: .standard)
    }
}
