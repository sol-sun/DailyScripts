// Playground - noun: a place where people can play

import UIkit;

var n:Int = 0;

while 10 > n++ {
    "index:" + String(n)
}



/* func tax(#price:Int, #rate:Double) -> Int{
    return Int(Double(price) * (1.0 + rate));
} ~*/

/*var res:Int = tax(price:1000, rate:0.08);*/


/*func tax(price:Int) -> (kakaku:Int, zei:Int){
    var zei:Int = Int(Double(price) * 0.08);
    var kakaku:Int = price - zei;
   return  (kakaku:kakaku, zei:zei);
}*/


//INOUT 引数はとても面白い．
func tax (inout price:Int, rate:Double = 0.08) -> Void {
    price = Int(Double(price) * (1.0 + rate));
}

var num = 12300;
tax(&num);


class Helo {
    var name:String;
    
    init(name:String){
        self.name = name;
    }
    
    func say(){
        println("Hello, " + name+"!");
    }
}

class Hello:Helo{
    var name2:String = "YAMADA";

    override  func say(){
        println("Hi,"+name+"-"+name2+"!");
    }

}


var obj:Helo = Helo(name:"Taro");
obj.say();











