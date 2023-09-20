//
//  ViewController.swift
//  Counter
//
//  Created by Pavel Nikipelov on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var nullButton: UIButton!
    
    var count = 0

    @IBAction func plusAction(_ sender: Any) {
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
    
    @IBAction func minusAction(_ sender: Any) {
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
    
    @IBAction func nullAction(_ sender: Any) {
        count = 0
        label.text = "\(count)"
        label.textColor = .systemBlue
        textView.text = textView.text + "\n[\(Date().displayFormat)]: значение сброшено"
        print("Значение счётчика: \(count)")
    }
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        plusButton.backgroundColor = .systemRed
        minusButton.backgroundColor = .systemBlue
        nullButton.backgroundColor = .systemGray
        label.textColor = .systemBlue
        labelText.textColor = .black
        
        textView.text = "История изменений:"
        textView.font = UIFont.systemFont(ofSize: 18)
    }
}

extension Date {
    var displayFormat: String {
        self.formatted(date: .numeric, time: .standard)
    }
}
