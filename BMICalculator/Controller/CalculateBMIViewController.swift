//
//  CalculateBMIViewController.swift
//  BMICalculator
//
//  Created by Rohit Sharma on 27/11/22.
//

import UIKit

class CalculateBMIViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmi : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
     @IBAction func heightSlider(_ sender: UISlider) {
         heightLabel.text = String(format: "%.2f", sender.value)+" m"
     }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = String(format: "%.2f", sender.value)+" Kg"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        bmi = weightSlider.value / (heightSlider.value * heightSlider.value)
        self.performSegue(withIdentifier: "resultToGo", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultToGo" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.modalPresentationStyle = .fullScreen
            destinationVC.bmiValue = Double(bmi)
            
        }
    }
}
