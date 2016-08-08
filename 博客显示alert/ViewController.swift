//
//  ViewController.swift
//  博客显示alert
//
//  Created by qianfeng on 16/7/9.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       self.view.backgroundColor = UIColor.cyanColor()
       
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        var alert = UIAlertController(title: "alert", message: "textfiled演示", preferredStyle: .Alert)
        var action = UIAlertAction(title: "action", style: .Default, handler: nil)
        alert.addAction(action)
        var actioncancel = UIAlertAction(title: "cancel", style: .Cancel, handler: nil)
        alert.addAction(actioncancel)
        var actionDestructive = UIAlertAction(title: "第三个按钮", style: .Destructive, handler: nil)
        alert.addAction(actionDestructive)
    
        alert.addTextFieldWithConfigurationHandler(nil)
        alert.addTextFieldWithConfigurationHandler { (textfiled) in
            textfiled.backgroundColor = UIColor.orangeColor()
            textfiled.borderStyle = .Line
        }
        self.presentViewController(alert, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

