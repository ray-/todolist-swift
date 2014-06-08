//
//  XYZToDoItem.swift
//  ToDoList
//
//  Created by Mendoza, Ray on 6/7/14.
//  Copyright (c) 2014 Mendoza, Ray. All rights reserved.
//

import Foundation

class XYZToDoItem {
    var itemName : NSString = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate()
    
    init(itemName: NSString) {
        self.itemName = itemName
    }
    
}
