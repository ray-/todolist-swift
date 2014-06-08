//
//  XYZTodoListTableViewController.swift
//  ToDoList
//
//  Created by Mendoza, Ray on 6/7/14.
//  Copyright (c) 2014 Mendoza, Ray. All rights reserved.
//

import UIKit

// See http://stackoverflow.com/questions/24029586/xcode-6-storyboard-unwind-segue-with-swift-not-connecting-to-exit
@objc(XYZTodoListTableViewController) class XYZTodoListTableViewController: UITableViewController {

    var toDoItems : NSMutableArray = NSMutableArray()
    let CellIdentifier : NSString = "ListPrototypeCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadInitialData()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // #pragma mark - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.toDoItems.count
    }


    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        println("unwind " + segue.description);
    }
    
    func loadInitialData() {
        var item1: XYZToDoItem = XYZToDoItem(itemName: "Buy Milk")
        var item2: XYZToDoItem = XYZToDoItem(itemName: "Buy eggs")
        var item3: XYZToDoItem = XYZToDoItem(itemName: "Read a book")
        
        self.toDoItems.addObject(item1)
        self.toDoItems.addObject(item2)
        self.toDoItems.addObject(item3)
    }
    

    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell? {
        // something smells dangerous here
        var cell = tableView?.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as? UITableViewCell
        var toDoItem : XYZToDoItem = self.toDoItems.objectAtIndex(indexPath!.row) as XYZToDoItem
    
        cell!.text = toDoItem.itemName
        return cell
    }

    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView?, canEditRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView?, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath?) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView?, moveRowAtIndexPath fromIndexPath: NSIndexPath?, toIndexPath: NSIndexPath?) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView?, canMoveRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // #pragma mark - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
