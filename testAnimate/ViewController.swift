//
//  ViewController.swift
//  testAnimate
//
//  Created by Artwalk on 1/8/15.
//  Copyright (c) 2015 Artwalk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var b :Bool = true
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var testView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animate()
        
    }
    @IBAction func animateAction(sender: UIButton) {
        animate()
    }
    
    func animate() {
        
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            println(self.testView.center)
            var point:CGPoint = self.testView.center
            var h = self.b ? -self.view.bounds.height : self.view.bounds.height
            point.y += h
            self.testView.center = point
            
            self.bgView.alpha = self.b ? 1 : 0
            
            self.b = !self.b
            }) { (finished) -> Void in
        }
    }

}

