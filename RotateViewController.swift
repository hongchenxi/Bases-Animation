//
//  RotateViewController.swift
//  Animation
//
//  Created by 洪晨希 on 15/9/5.
//  Copyright (c) 2015年 cx. All rights reserved.
//

import UIKit

class RotateViewController: UIViewController {

    @IBOutlet weak var orangeSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.orangeSquare.layer.masksToBounds = true
        
        self.orangeSquare.layer.cornerRadius = 50
    }

    func rotate(){
        
        UIView.animateWithDuration(0.3, delay: 0, options: .CurveLinear, animations: { () -> Void in
            
            self.orangeSquare.transform = CGAffineTransformRotate(self.orangeSquare.transform, CGFloat(M_PI))
            
        }) { (finished) -> Void in
            
            self.rotate()
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.rotate()
        
        
        
    }

}
