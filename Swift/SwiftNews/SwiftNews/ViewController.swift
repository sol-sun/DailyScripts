//
//  ViewController.swift
//  SwiftNews
//
//  Created by 宮原 太陽 on 2014/11/17.
//  Copyright (c) 2014年 Sol-Sun. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 5
        }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCellWithIdentifier("news") as UITableViewCell
        cell.textLabel.text = "Swift News"
        return cell
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

