//
//  BasicToDoItem.swift
//  todoList
//
//  Created by Guest User on 14/06/17.
//  Copyright © 2017 Guest User. All rights reserved.
//

import UIKit

class BasicToDoItem: NSObject {

    var itemName: String;
    var completed: Bool;
    var creationDate: Date;
    
    init(itemName: String, completed: Bool, creationDate: Date) {
        self.itemName = itemName;
        self.completed = completed;
        self.creationDate = creationDate;
    }
}
