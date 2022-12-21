//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Rohit Sharma on 27/11/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    
    var bmiValue = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        result.text = String(bmiValue)
    }

    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
