#!/usr/bin/swift

class Friend
{
 var name:String;

 var old:Int;
 var age:Int{
     get {
     	 return old
     }
     set {
     	 if newValue > 0{
	    old = newValue
	 }
     }
 }
 init(name:String, age:Int){
 		   self.name = name;
		   self.old = age;
 }

 func printData(){
      println("\(self.name) (\(age))")
 }
 
}

var newValue = 1;
var you = Friend(name: "Taro", age: 30);
you.printData();