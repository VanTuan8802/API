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
    var timer : Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        ballView = UIView(frame: CGRect(x: 0, y: 0, width: radius*2, height: radius*2))
        
        view.addSubview(ballView)
        
        ballView.backgroundColor = .red
        ballView.layer.cornerRadius = radius
        ballView.center = CGPoint(x: view.center.x, y: 100)
        
        //Khởi tạo Timer
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
    }

    @objc func runTimer()
    {
        ballView.frame.origin.y = 0
        height = height + 100
        ballView.center.y += 1
        while(ballView.frame.origin.y >= (view.frame.maxY - radius ))
        {
//            if(ballView.center.y >= view.frame.maxY - radius)
//            {
//                ballView.center.y -= 1
//                while(ballView.center.y >= height)
//                {
//                    runTimer()
//                }
//
//            }
            timer.invalidate()
        }
        
    }
    

}

