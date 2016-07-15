//
//  GraphView.swift
//  HoustoniOSJune2016-Swift
//
//  Created by Mohammad Azam on 7/12/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import UIKit

@IBDesignable
class GraphView: UIView {
    
    @IBInspectable var cornerRadius :CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = true
        }
    }
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        //let anotherView = UIView(frame: CGRectMake(20,50,50,50))
        
        
        //anotherView.backgroundColor = UIColor.cyanColor()
        //self.addSubview(anotherView)
        
        // setup()
    }
    
    //    func setup() {
    //
    //        self.layer.cornerRadius = 10.0
    //        self.layer.masksToBounds = true
    //    }
    //
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
         UIColor.blueColor().setFill()
         //let circle = UIBezierPath(ovalInRect: CGRect(x: 43, y: 97, width: 20, height: 20))
         //let circle = UIBezierPath(ovalInRect: CGRect(x: 127, y: 393, width: 20, height: 20))
    
//     circle.fill()
//     circle.closePath()
       
        
        
        let points :[CGPoint] = [CGPoint(x:-15,y:800),CGPoint(x:50,y:100), CGPoint (x:130,y:400), CGPoint (x:160,y:50), CGPoint (x:220,y:350), CGPoint (x:300,y:100), CGPoint (x:380,y:350), CGPoint (x:500,y:100), CGPoint (x:600,y:350)]
        
      let line = UIBezierPath()
        line.moveToPoint(points.first!)
        
        for point in points {
            
            line.addLineToPoint(point)
            let circle = UIBezierPath(ovalInRect: CGRect(x: point.x-7, y: point.y-7, width: 20, height: 20))
            circle.fill()
            
            print(point)
        }
        
          
        
        UIColor.redColor().setStroke()
//        UIColor.blueColor().setFill()
       // let line = UIBezierPath()
//        line.fill()
//        line.moveToPoint(CGPoint(x: -15, y: 800))
//        
//        line.addLineToPoint(CGPoint(x: 50, y:100))
//        let circle = UIBezierPath(ovalInRect: CGRect(x: 43, y: 97, width: 20, height: 20))
//    
//        line.addLineToPoint(CGPoint(x: 130, y:400 ))
//        let circleone = UIBezierPath(ovalInRect: CGRect(x: 123, y: 393, width: 20, height: 20))
//    
//        line.addLineToPoint(CGPoint(x: 160, y: 50))
//        let circletwo = UIBezierPath(ovalInRect: CGRect(x: 153, y: 43, width: 20, height: 20))
//        
//        line.addLineToPoint(CGPoint(x: 220, y: 350))
//        let circlethree = UIBezierPath(ovalInRect: CGRect(x: 213, y: 343, width: 20, height: 20))
//        
//        line.addLineToPoint(CGPoint(x: 300, y: 100))
//         let circlefour = UIBezierPath(ovalInRect: CGRect(x: 292, y: 93, width: 20, height: 20))
//        
//        line.addLineToPoint(CGPoint(x: 380, y: 350))
//         let circlefive = UIBezierPath(ovalInRect: CGRect(x: 373, y: 343, width: 20, height: 20))
//        
//        line.addLineToPoint(CGPoint(x: 500, y: 100))
//         let circlesix = UIBezierPath(ovalInRect: CGRect(x: 493, y: 93, width: 20, height: 20))
//        
//        line.addLineToPoint(CGPoint(x: 600, y: 350))
//         let circleseven = UIBezierPath(ovalInRect: CGRect(x: 593, y: 342, width: 20, height: 20))
        
        line.closePath()
        line.stroke()
//        line.fill()
        
        
//        circle.fill()
//        circle.closePath()
//        
//        circleone.fill()
//        circletwo.fill()
//        circlethree.fill()
//        circlefour.fill()
//        circlefive.fill()
//        circlesix.fill()
//        circleseven.fill()
        
// run a loop 
        
        
    }
    
    
    
}