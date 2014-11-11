#!/usr/bin/env swift

func fizzBuzz(maxNum: Int) -> Array<String> {
     var ret = Array<String>();
     for i in 1...maxNum {
     switch i % 15 {
      case 3, 6, 9, 12:
      ret.append("fizz");
      case 5, 10:
      ret.append("buzz");
      case 0:
      	   ret.append("fizzbuzz");
	   default:
	   ret.append(String(i))
      }
     }
return ret
}