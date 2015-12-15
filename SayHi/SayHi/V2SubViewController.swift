//
//  V2SubViewController.swift
//  SayHi
//
//  Created by lengbinbin on 15/12/15.
//  Copyright © 2015年 lengbinbin. All rights reserved.
//

import UIKit

class V2SubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func clickAction(sender: AnyObject) {
        
        
        NSNotificationCenter.defaultCenter().postNotificationName("receiveShowChatVC", object: nil)
        
        self.navigationController?.popToRootViewControllerAnimated(false)
        
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
