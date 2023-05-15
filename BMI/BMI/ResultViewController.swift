//
//  ResultViewController.swift
//  BMI
//
//  Created by Nguyễn Tuấn on 15/05/2023.
//

import UIKit

class ResultViewController: UIViewController {

    var age:Int = 0
    var height:Int = 0
    var weight:Int = 0
    
    @IBOutlet weak var reCaculate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func reCaculate(_ sender: Any) {
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
