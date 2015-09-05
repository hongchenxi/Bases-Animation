//
//  ViewController.swift
//  Animation
//
//  Created by 洪晨希 on 15/9/5.
//  Copyright (c) 2015年 cx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greenSquare: UIView!

    @IBOutlet weak var redSquare: UIView!
    
    @IBOutlet weak var yellowSquare: UIView!
    
    @IBOutlet weak var blueSquare: UIView!
    
    @IBOutlet weak var purpleSquare: UIView!
    
    @IBOutlet weak var orangeSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
 
        UIView.animateWithDuration(1.0, delay: 0, options: .Repeat | .Autoreverse, animations: { () -> Void in
            
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x;
            
        }, completion: nil)
        
        
        
        //CurveEaseIn：先匀速后快
        UIView.animateWithDuration(1.0, delay: 0, options: .CurveEaseIn, animations: { () -> Void in
            
            self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x
            
        }, completion: nil)
        
        
        //CurveEaseOut:先快后匀速
        UIView.animateWithDuration(1.0, delay: 0, options: .CurveEaseOut, animations: { () -> Void in
            
            self.yellowSquare.center.x = self.view.bounds.width - self.yellowSquare.center.x
            
            }, completion: nil)
        
        
        //CurveEaseInOut:先慢后快
        UIView.animateWithDuration(1.0, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
            
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
            
            }, completion: nil)
        
        
        /*
            usingSpringWithDamping:阻尼，0-1
            initialSpringVelocity:弹簧初始速度
        */
        
        UIView.animateWithDuration(5.0, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
            
            self.purpleSquare.center.x = self.view.bounds.width - self.purpleSquare.center.x
            
        }, completion: nil)
        
        
        UIView.animateWithDuration(5.0, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 1, options: nil, animations: { () -> Void in
            
            self.orangeSquare.center.x = self.view.bounds.width - self.orangeSquare.center.x
            
            }, completion: nil)
        
        
    }
    
    
}

