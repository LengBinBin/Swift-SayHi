//
//  MyViewController.swift
//  SayHi
//
//  Created by lengbinbin on 15/12/15.
//  Copyright © 2015年 lengbinbin. All rights reserved.
//

import UIKit

class MyViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NSNotificationCenter.defaultCenter().addObserver(self, selector:Selector("showChat"), name: "receiveShowChatVC", object:nil)
        
        // Do any additional setup after loading the view.
    }

    func showChat(){
        self.selectedIndex = 0;
       NSNotificationCenter.defaultCenter().postNotificationName("showChatInV1", object: nil)
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
