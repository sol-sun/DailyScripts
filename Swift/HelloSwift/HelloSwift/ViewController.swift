//
//  ViewController.swift
//  HelloSwift
//
//  Created by 宮原 太陽 on 2014/11/15.
//  Copyright (c) 2014年 Sol-Sun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func sayHello(sender: AnyObject) {
        textField.text = "Hello Swift!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

