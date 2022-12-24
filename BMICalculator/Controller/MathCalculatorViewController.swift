//
//  MathCalculatorViewController.swift
//  BMICalculator
//
//  Created by Rohit Sharma on 21/12/22.
//

import UIKit

class MathCalculatorViewController: UIViewController {

    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    @IBOutlet weak var b11: UIButton!
    @IBOutlet weak var b12: UIButton!
    @IBOutlet weak var b13: UIButton!
    @IBOutlet weak var b14: UIButton!
    @IBOutlet weak var b15: UIButton!
    @IBOutlet weak var b16: UIButton!
    @IBOutlet weak var b17: UIButton!
    @IBOutlet weak var b18: UIButton!
    @IBOutlet weak var b19: UIButton!
    @IBOutlet weak var b20: UIButton!
    
    @IBOutlet weak var delete: UIButton!
    
    @IBOutlet weak var expression: UITextField!
    
    @IBOutlet weak var result: UITextField!
    
    var calculatedValue = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        
        setButtonColor()
        setButtonBackgroundColor()
        setButtonText()
        setButtonsStyle()
        
        expression.text = ""+String(format: "%.1f", calculatedValue)
    }
    
    func setButtonText(){
        b1.setTitle("C", for: .normal)
        b2.setTitle("()", for: .normal)
        b3.setTitle("%", for: .normal)
        b4.setTitle("/", for: .normal)
        b5.setTitle("7", for: .normal)
        b6.setTitle("8", for: .normal)
        b7.setTitle("9", for: .normal)
        b8.setTitle("X", for: .normal)
        b9.setTitle("4", for: .normal)
        b10.setTitle("5", for: .normal)
        b11.setTitle("6", for: .normal)
        b12.setTitle("-", for: .normal)
        b13.setTitle("1", for: .normal)
        b14.setTitle("2", for: .normal)
        b15.setTitle("3", for: .normal)
        b16.setTitle("+", for: .normal)
        b17.setTitle("+/-", for: .normal)
        b18.setTitle("0", for: .normal)
        b19.setTitle(".", for: .normal)
        b20.setTitle("=", for: .normal)
        
        b1.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b2.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b3.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b4.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b5.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b6.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b7.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b8.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b9.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b10.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b11.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b12.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b13.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b14.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b15.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b16.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b17.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b18.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b19.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        b20.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
    }
    
    func setButtonBackgroundColor(){
        b1.backgroundColor = .systemGray6
        b2.backgroundColor = .systemGray6
        b3.backgroundColor = .systemGray6
        b4.backgroundColor = .systemGray6
        b5.backgroundColor = .systemGray6
        b6.backgroundColor = .systemGray6
        b7.backgroundColor = .systemGray6
        b8.backgroundColor = .systemGray6
        b9.backgroundColor = .systemGray6
        b10.backgroundColor = .systemGray6
        b11.backgroundColor = .systemGray6
        b12.backgroundColor = .systemGray6
        b13.backgroundColor = .systemGray6
        b14.backgroundColor = .systemGray6
        b15.backgroundColor = .systemGray6
        b16.backgroundColor = .systemGray6
        b17.backgroundColor = .systemGray6
        b18.backgroundColor = .systemGray6
        b19.backgroundColor = .systemGray6
        b20.backgroundColor = .systemGreen
       
    }
    
    func setButtonColor(){
        b1.setTitleColor(.red, for: .normal)
        b2.setTitleColor(.systemGreen, for: .normal)
        b3.setTitleColor(.systemGreen, for: .normal)
        b4.setTitleColor(.systemGreen, for: .normal)
        b5.setTitleColor(.black, for: .normal)
        b6.setTitleColor(.black, for: .normal)
        b7.setTitleColor(.black, for: .normal)
        b8.setTitleColor(.systemGreen, for: .normal)
        b9.setTitleColor(.black, for: .normal)
        b10.setTitleColor(.black, for: .normal)
        b11.setTitleColor(.black, for: .normal)
        b12.setTitleColor(.systemGreen, for: .normal)
        b13.setTitleColor(.black, for: .normal)
        b14.setTitleColor(.black, for: .normal)
        b15.setTitleColor(.black, for: .normal)
        b16.setTitleColor(.systemGreen, for: .normal)
        b17.setTitleColor(.black, for: .normal)
        b18.setTitleColor(.black, for: .normal)
        b19.setTitleColor(.black, for: .normal)
        b20.setTitleColor(.white, for: .normal)
    }
    
    func setButtonsStyle(){
        setButtonStyle(b1)
        setButtonStyle(b2)
        setButtonStyle(b3)
        setButtonStyle(b4)
        setButtonStyle(b5)
        setButtonStyle(b6)
        setButtonStyle(b7)
        setButtonStyle(b8)
        setButtonStyle(b9)
        setButtonStyle(b10)
        setButtonStyle(b11)
        setButtonStyle(b12)
        setButtonStyle(b13)
        setButtonStyle(b14)
        setButtonStyle(b15)
        setButtonStyle(b16)
        setButtonStyle(b17)
        setButtonStyle(b18)
        setButtonStyle(b19)
        setButtonStyle(b20)
    }
    
    func setButtonStyle(_ button : UIButton){
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
       // button.backgroundColor = .lightGray
    }
    
    
    @IBAction func b1Action(_ sender: UIButton) {
        
    }
    
    @IBAction func b2Action(_ sender: UIButton) {
        
    }
    @IBAction func b3Action(_ sender: UIButton) {
        
    }
    @IBAction func b4Action(_ sender: UIButton) {
        
    }
    @IBAction func b5Action(_ sender: UIButton) {
        var currentText = expression.text
        expression.text = (currentText ?? "0.1")+"7.0"
        
    }
    @IBAction func b6Action(_ sender: UIButton) {
        
    }
    @IBAction func b7Action(_ sender: UIButton) {
        
    }
    @IBAction func b8Action(_ sender: UIButton) {
        
    }
    @IBAction func b9Action(_ sender: UIButton) {
        
    }
    @IBAction func b10Action(_ sender: UIButton) {
        
    }
    @IBAction func b11Action(_ sender: UIButton) {
        
    }
    @IBAction func b12Action(_ sender: UIButton) {
        
    }
    @IBAction func b13Action(_ sender: UIButton) {
        
    }
    @IBAction func b14Action(_ sender: UIButton) {
        
    }
    @IBAction func b15Action(_ sender: UIButton) {
        
    }
    @IBAction func b16Action(_ sender: UIButton) {
        
    }
    @IBAction func b17Action(_ sender: UIButton) {
        
    }
    @IBAction func b18Action(_ sender: UIButton) {
        
    }
    @IBAction func b19Action(_ sender: UIButton) {
        
    }
    @IBAction func b20Action(_ sender: UIButton) {
        
    }
    
}
