#!/usr/bin/env swift

import Cocoa;

var arr1:[Int] = [Int](count:10, repeatedValue:4)

let data:[String:Int] = ["国語":98,"数学":76,"英語":54];
var total:Int = 0;

for (key, val) in data{
    total += val;
//    println("add \(key)");
}
//println("Total: \(total)");

let keys = data.keys;

for key in keys{
    println(key)
}

