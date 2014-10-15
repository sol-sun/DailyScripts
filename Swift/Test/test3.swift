#!/usr/bin/env swift

class Exchange{
      /*class var rate:Double {
      	    return 105.0;
      }*/

      var rate:Double = 105.0; 
      var hoge:String = "hogehoge";

      func DollarToYen(d:Double)->Int{
      	    return Int(d * rate)
      }
      /*class func YenToDollar(y:Int)->Double{
      	    return Double((y * 100) / Int(rate)) / 100;
      }*/
}
println(Exchange().DollarToYen(150.5));
//println(Exchange.YenToDollar(15000));
//var you:Exchange = Exchange();

//println(you.DollarToYen(150.5));
