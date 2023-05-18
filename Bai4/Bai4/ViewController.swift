//
//  ViewController.swift
//  Bai4
//
//  Created by Nguyễn Tuấn on 16/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stricker()
    }

    func stricker()
    {
        let shapeLayer: CAShapeLayer = CAShapeLayer()

        let shape1 = shape(x: 0, y: 0, width: 100)
        let square1 = square(x: 0, y: 0, width: 100)
        
        let shape2 = shape(x: 0, y: 100, width: 100)
        let square2 = square(x: 0, y: 100, width: 100)
        
        let shape3 = shape(x: 0, y: 200, width: 100)
        let square3 = square(x: 0, y: 200, width: 100)
        
        let shape4 = shape(x: 100, y: 200, width: 100)
        let square4 = square(x: 100, y: 200, width: 100)
        
        shapeLayer.insertSublayer(shape1, at: 0)
        shapeLayer.insertSublayer(square1, at: 0)
        
        shapeLayer.insertSublayer(shape2, at: 0)
        shapeLayer.insertSublayer(square2, at: 0)
        
        shapeLayer.insertSublayer(shape3, at: 0)
        shapeLayer.insertSublayer(square3, at: 0)
        
        shapeLayer.insertSublayer(shape4, at: 0)
        shapeLayer.insertSublayer(square4, at: 0)
        myView.layer.addSublayer(shapeLayer)
        
    }
    
    func shape(x:Int,y:Int,width:Int) ->CAShapeLayer
    {
        let shape: CAShapeLayer = CAShapeLayer()
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: x, y: y))
        path.addLine(to: CGPoint(x: x+width, y: y))
        path.addLine(to: CGPoint(x: x+width-10, y: y+10))
        path.addLine(to: CGPoint(x: x+10, y: y+10))
        path.addLine(to: CGPoint(x: x+10, y: y+width-10))
        path.addLine(to: CGPoint(x: x, y: y+width))
        path.addLine(to: CGPoint(x: x, y: y))
        path.addLine(to: CGPoint(x: x+10, y: y+10))
        
        shape.fillColor = UIColor.systemOrange.cgColor
        
        shape.path = path.cgPath
        return shape
    }
    
    func square(x:Int,y:Int,width:Int) ->CAShapeLayer
    {
        let square: CAShapeLayer = CAShapeLayer()
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: x+10, y: y+10))
        path.addLine(to: CGPoint(x: x+10, y: y+width-10))
        path.addLine(to: CGPoint(x: x, y: y+width))
        path.addLine(to: CGPoint(x: x+width, y: y+width))
        path.addLine(to: CGPoint(x: x+width, y: y))
        path.addLine(to: CGPoint(x: x+width-10, y: y+10))
        
        square.fillColor = UIColor.orange.cgColor
        square.path = path.cgPath

        return square
    }
    

}

