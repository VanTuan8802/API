//
//  ViewController.swift
//  BMI
//
//  Created by Nguyễn Tuấn on 14/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewHeight: UIView!
    @IBOutlet weak var valueHeight: UILabel!
    @IBOutlet weak var sliderHeight: UISlider!
    
    @IBOutlet weak var viewWeight: UIView!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var stepperWeight: UIStepper!
    
    
    @IBOutlet weak var viewAge: UIView!
    @IBOutlet weak var ageValue: UILabel!
    @IBOutlet weak var ageStepper: UIStepper!
    
    @IBOutlet weak var caculate: UIButton!
     
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewHeight.layer.cornerRadius = 30
        valueHeight.text = "\(Int(sliderHeight.value))"
        
        viewWeight.layer.cornerRadius = 20
        weightValue.text="\(Int(stepperWeight.value))"
     
        viewAge.layer.cornerRadius = 20
        ageValue.text = "\(Int(ageStepper.value))"
    }
    
    @IBAction func changeHeight(_ sender: Any) {
        valueHeight.text = "\(Int(sliderHeight.value))"
    }
    
    @IBAction func changeWeight(_ sender: Any) {
        weightValue.text="\(Int(stepperWeight.value))"
    }
    
    @IBAction func changeAge(_ sender: Any) {
        ageValue.text = "\(Int(ageStepper.value))"
    }
    
    @IBAction func caculate(_ sender: Any) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = mainStoryboard.instantiateViewController(withIdentifier: "ResultViewController")
        
        
        self.present(mainVC, animated: true)

    }
    
}

