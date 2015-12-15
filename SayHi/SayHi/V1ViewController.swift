//
//  V1ViewController.swift
//  SayHi
//
//  Created by lengbinbin on 15/12/15.
//  Copyright © 2015年 lengbinbin. All rights reserved.
//

import UIKit

class V1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("showChatV1SubAction"), name: "showChatInV1", object: nil)
        // Do any additional setup after loading the view.
    }

    func showChatV1SubAction(){
        self.performSegueWithIdentifier("ShowV1SubSegue", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
