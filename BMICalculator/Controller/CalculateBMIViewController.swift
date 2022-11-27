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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
     @IBAction func heightSlider(_ sender: UISlider) {
         heightLabel.text = String(format: "%.2f", sender.value)+"m"
     }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = String(format: "%.2f", sender.value)+"Kg"
    }
    
}
