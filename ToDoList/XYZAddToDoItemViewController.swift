//
//  XYZAddToDoItemViewController.swift
//  ToDoList
//
//  Created by Mendoza, Ray on 6/7/14.
//  Copyright (c) 2014 Mendoza, Ray. All rights reserved.
//

import UIKit

class XYZAddToDoItemViewController: UIViewController {
    var toDoItem : XYZToDoItem?
    
    @IBOutlet var textField : UITextField
    @IBOutlet var doneButton : UIBarButtonItem
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if (!doneButton.isEqual(sender)) {
            return
        }
        
        if (!self.textField.text.isEmpty) {
            self.toDoItem = XYZToDoItem(itemName: self.textField.text)
        }
    }
    

}
