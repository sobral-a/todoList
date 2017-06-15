//
//  BasicAddToDoItemViewController.swift
//  todoList
//
//  Created by Guest User on 14/06/17.
//  Copyright © 2017 Guest User. All rights reserved.
//

import UIKit

class BasicAddToDoItemViewController: UIViewController {
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var textField: UITextField!
    
    var toDoItem: BasicToDoItem = BasicToDoItem(itemName: "", completed: false, creationDate: Date.init())

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (sender as? UIBarButtonItem != self.doneButton ) {
            return;
        }
        if ((self.textField.text?.characters.count)! > 0) {
            self.toDoItem.itemName = self.textField.text!;
            self.toDoItem.completed = false;
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
