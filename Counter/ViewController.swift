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
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plusAction(_ sender: Any) {
        count = count + 1
        label.text = "\(count)"
        print("Значение счётчика: \(count)")
    }
    
}

