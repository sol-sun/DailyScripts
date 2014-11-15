// Playground - noun: a place where people can play
//
//dataDownloadの関数が終わったら，処理する内容．


func dataDownload (handler: (String, String, String) -> Int){
    var arg0 = "call"
    var arg1 = "from"
    var arg2 = "dataDownload"
    handler(arg0, arg1, arg2)
 }

//関数dataDownloadが呼ばれると上の関数内でのコードが走り，みっつのargが決定される．続いて，下のみっつのprintlnが実行される．
dataDownload( { (arg0, arg1, arg2) -> Int in

//クロージャの処理
println(arg0)
println(arg1)
println(arg2)
    
return 0
})