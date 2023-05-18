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
     
    var height : Float = 100
    var weight : Float = 50
    
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
        height = Float(sliderHeight.value)
        valueHeight.text = "\(Int(sliderHeight.value)) cm"
    }
    
    @IBAction func changeWeight(_ sender: Any) {
        weight = Float(stepperWeight.value)
        weightValue.text="\(Int(stepperWeight.value))"
    }
    
    @IBAction func changeAge(_ sender: Any) {
        ageValue.text = "\(Int(ageStepper.value))"
    }
    
    @IBAction func caculate(_ sender: Any) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = mainStoryboard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
        
        self.present(mainVC, animated: true)
        
        height = height/100
        let BMI = (weight)/(height*height)
        mainVC.bmiValue.text = "\(BMI)"
        if(BMI < 18.5)
        {
            mainVC.result.text = "THIẾU CÂN"
            mainVC.note.text = "BẠN CẦN ĂN UỐNG NHIỀU HƠN"
        }
        else if(BMI < 24.9)
        {
            mainVC.result.text = "CÂN ĐỐI"
            mainVC.note.text = "BẠN HÃY GIỮ THÓI QUEN ĂN UỐNG"
        }
        else if(BMI < 29.9)
        {
            mainVC.result.text = "THỪA CÂN"
            mainVC.note.text = "BẠN HÃY ĂN UỐNG ĐIỀU ĐỘ HƠN"
        }
        else if(BMI < 34.9)
        {
            mainVC.result.text = "BÉO PHÌ"
            mainVC.note.text = "BẠN CẦN GIẢM ĐỒ ĂN CÓ MỠ"
        }
        else
        {
            mainVC.result.text = "BÉO PHÌ NGUY HIỂM"
            mainVC.note.text = "BẠN CẦN HẠN CHẾ ĂN ĐỒ BÉO "
        }
    }
    
}

