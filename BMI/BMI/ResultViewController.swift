//
//  ResultViewController.swift
//  BMI
//
//  Created by Nguyễn Tuấn on 15/05/2023.
//

import UIKit

class ResultViewController: UIViewController {

    var resutlLable : String!
    var bmiValueLable : String!
    var noteLabel : String!
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var bmiValue: UILabel!
    @IBOutlet weak var note: UILabel!
    @IBOutlet weak var reCaculate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func reCaculate(_ sender: Any) {
        self.dismiss(animated: true)
    }

}
