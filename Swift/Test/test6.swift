#!/usr/bin/env swift

import Cocoa;

enum Janken{
     case Goo;
     case Choki;
     case Paa;
}

enum ジャンケン : String{
     	case グー = "グー";
	case パー = "パー";
	case チョキ = "チョキ";

}

var me = Janken.Goo
var you = ジャンケン.グー
println(you.toRaw());