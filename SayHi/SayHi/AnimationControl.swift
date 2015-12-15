//
//  AnimationControl.swift
//  SayHi
//
//  Created by lengbinbin on 15/12/8.
//  Copyright © 2015年 lengbinbin. All rights reserved.
//

import UIKit

class AnimationControl: NSObject {
    
    class func animationMove( animationView:UIView, movePosition:CGPoint,time:NSTimeInterval, dispatchAfter:NSTimeInterval) {
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(dispatchAfter * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) { () -> Void in
            UIView.animateWithDuration(time, animations: { () -> Void in
                animationView.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, movePosition.x, movePosition.y)
            })
        }
    }
    
    class func animationScale(animationView:UIView, scale:CGPoint,time:NSTimeInterval, dispatchAfter:NSTimeInterval) {
        
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(dispatchAfter * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) { () -> Void in
            UIView.animateWithDuration(time, animations: { () -> Void in
                animationView.transform = CGAffineTransformScale (CGAffineTransformIdentity, scale.x,scale.y)
            })
        }
    }
    
    
}
