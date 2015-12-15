//
//  ViewController.swift
//  SayHi
//
//  Created by lengbinbin on 15/12/8.
//  Copyright © 2015年 lengbinbin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTitleLable: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var leftCover: UIView!
    @IBOutlet weak var rightCover: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTitleLable.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, -200);
        startButton.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(animated: Bool) {
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        myTitleLable.hidden = false

        AnimationControl.animationMove(self.myTitleLable, movePosition: CGPointMake(0, 0), time: 1.5, dispatchAfter: 0)
        AnimationControl.animationMove(self.leftCover, movePosition: CGPointMake(600, 0), time: 1.2, dispatchAfter: 1.5)
        AnimationControl.animationMove(self.rightCover, movePosition: CGPointMake(600, 0), time: 1.2, dispatchAfter: 2.5)
        AnimationControl.animationScale(self.startButton, scale: CGPointMake(1, 1), time: 0.5, dispatchAfter: 3.7)
    }

    
    
    @IBAction func startActionMethod(sender: AnyObject) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

