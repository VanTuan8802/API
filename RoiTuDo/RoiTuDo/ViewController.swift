//
//  ViewController.swift
//  RoiTuDo
//
//  Created by Nguyễn Tuấn on 15/05/2023.
//

import UIKit

class ViewController: UIViewController {
    var height : CGFloat  = 0
    var ballView : UIView!
    let radius : CGFloat = 30
    var timer1 : Timer!
    var timer2 : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ballView = UIView(frame: CGRect(x: 0, y: 0, width: radius*2, height: radius*2))
        
        view.addSubview(ballView)
        
        ballView.backgroundColor = .red
        ballView.layer.cornerRadius = radius
        ballView.center = CGPoint(x: view.center.x, y: 100)
        
        //Khởi tạo Timer
        timer1 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer1), userInfo: nil, repeats: true)
    }
    
    @objc func runTimer1()
    {
        ballView.frame.origin.y += 1
        if(ballView.frame.origin.y >= view.bounds.height - ballView.bounds.height - 10)
        {
            timer1.invalidate()
            timer2 = Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(runTimer2), userInfo: nil, repeats: true)
        }
    }
    
    @objc func runTimer2() {
        ballView.frame.origin.y -= 1
        if (ballView.frame.origin.y <= height+50)
        {
            height += 100
            timer2.invalidate()
            timer1 = Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(runTimer1), userInfo: nil, repeats: true)
        }
    }
    
    
}

