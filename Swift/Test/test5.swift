#!/usr/bin/env swift

import Cocoa;

struct MyData {
       var age:Int;
       var name:String;

       func getData() -> String{
       	    return "[\(name)(\(age))]"
       }
}
var data = MyData(age: 99, name: "Taro");
var data2 = data;
data2.age = 24;
println(data.age);