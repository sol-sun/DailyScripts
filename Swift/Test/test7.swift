#!/usr/bin/env swift

func MakeTuple(#name:String, #age:Int)->(name:String, age:Int){
    return (name:name, age:age);   
}

var me = MakeTuple(name:"Yamada", age:99);
var you = MakeTuple(name:"Hanako", age:36);

println(me.name);
println(you.age);