//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Mehmet Akif LM on 11.07.2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//


import UIKit

class SecondViewController: UIViewController {
        
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        view.addSubview(label)
    }
}
