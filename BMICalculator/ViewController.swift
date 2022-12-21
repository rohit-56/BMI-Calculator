//
//  ViewController.swift
//  BMICalculator
//
//  Created by Rohit Sharma on 27/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var bmi: UILabel!
    @IBOutlet weak var calculator: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setTimerInBMILabel()
        setBackgroundGradient()
        
        Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(switchToCalculateBMI), userInfo: nil, repeats: false)
    }
    
    //MARK: Function to set gradient in Background
    func setBackgroundGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemRed.cgColor , UIColor.purple.cgColor]
        gradientLayer.frame = view.bounds
        backImage.layer.addSublayer(gradientLayer)
    }
    
    //MARK: This function used to set timer for every letter in BMI Label
    func setTimerInBMILabel(){
        bmi.text = ""
        calculator.text = ""
        let bmiText = "BMI"
        var index = 0
        for letter in bmiText {
            Timer.scheduledTimer(withTimeInterval: 0.3 * Double(index), repeats: false){(timer) in
                self.bmi.text?.append(letter)
            }
            index+=1
        }
        
        index = 0
        let calculatorText = "Calculator"
        
        for letter in calculatorText {
            Timer.scheduledTimer(withTimeInterval: 0.3 * Double(index), repeats: false){(timer) in
                self.calculator.text?.append(letter)
            }
            index+=1
        }
    }
    
    @objc func switchToCalculateBMI(){
        let storyboard = UIStoryboard(name: "MainTabBar", bundle: nil)
        let calculateBmiVC = storyboard.instantiateViewController(withIdentifier: "MainTabBarViewController") as UIViewController
        calculateBmiVC.modalPresentationStyle = .fullScreen
        calculateBmiVC.modalTransitionStyle = .coverVertical
        self.present(calculateBmiVC, animated: true , completion: nil)
    }
}

