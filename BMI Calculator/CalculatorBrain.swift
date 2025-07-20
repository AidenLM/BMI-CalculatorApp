//
//  CalculatorBrain.swift
//  BMI Calculator
//  Created by Mehmet Akif LM on 19.07.2025.

//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiString: String = String(format: "%.1f",bmi?.value ?? 0.0)
        return bmiString
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Advice is not available"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = Float(weight / pow(height,2))
        
        
        switch bmiValue {
        case ..<18.5:
            print( "Underweight")
            bmi = BMI(value: bmiValue, advice: "you need to gain weight", color: #colorLiteral(red: 0.1922346354, green: 0.6801101565, blue: 0.9027846456, alpha: 1))
        case 18.5..<25:
            print("Normal weight")
            bmi = BMI(value: bmiValue, advice: "fit as fiddle", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        default:
            bmi = BMI(value: bmiValue, advice: "Eas less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
            
        }
        
        
        
    }
    
}

