//
//  ScaleViewController.swift
//  Animation
//
//  Created by 洪晨希 on 15/9/5.
//  Copyright (c) 2015年 cx. All rights reserved.
//

import UIKit

class ScaleViewController: UIViewController {

    @IBOutlet weak var orangeSquare: UIView!
    
    @IBOutlet weak var redSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.redSquare.hidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        UIView.animateWithDuration(1.0, delay: 0, options: nil, animations: { () -> Void in
//        UIView.animateWithDuration(1.0, delay: 0, options: .Repeat | .Autoreverse, animations: { () -> Void in
        
            self.orangeSquare.transform = CGAffineTransformMakeScale(2, 2);//和下面那行没区别
            
//            self.orangeSquare.transform = CGAffineTransformScale(self.orangeSquare.transform, 2, 2);
            
            
        }, completion: nil)
        
        
        
        UIView.animateWithDuration(1.0, delay: 0, options: nil, animations: { () -> Void in
            
            self.redSquare.hidden = false
            
            self.redSquare.transform = CGAffineTransformMakeScale(2.0, 2.0)
            
            
        }) { (finished) -> Void in
            UIView.animateWithDuration(1.0, delay: 0, options: .CurveLinear, animations: { () -> Void in
                
                self.redSquare.transform = CGAffineTransformMakeScale(1.0, 1.0)
                
            }, completion: { (finished) -> Void in
                
                self.redSquare.removeFromSuperview()
            })
        }
        
        
        
        
        
        
        
    }

}
