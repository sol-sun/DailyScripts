import UIKit

class MyController: UITableViewController {
    override func viewDidLoad(){
        //親クラスのメソッドを呼び出す
        super.viewDidLoad()
        
        //セルのクラスを設定する
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return 5;
        }
    
    override func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) ->
        UITableViewCell {
            var cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
            
            cell.textLabel.text = "Sol-Sun"
            return cell
        }

}

var controller = MyController()
controller.view