//
//  BasicToDoListTableViewController.swift
//  todoList
//
//  Created by Guest User on 14/06/17.
//  Copyright © 2017 Guest User. All rights reserved.
//

import UIKit

class BasicToDoListTableViewController: UITableViewController {
    
    var toDoItems: [BasicToDoItem] = [];


    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDoItems = [];
        loadInitialData();

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.toDoItems.count;
    }
    
    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        
    }
    
    func loadInitialData () {
        let first : BasicToDoItem = BasicToDoItem(itemName: "acheter des fraises", completed: false, creationDate: Date.init());
        self.toDoItems.append(first);
        let second : BasicToDoItem = BasicToDoItem(itemName: "acheter du pain", completed: false, creationDate: Date.init());
        self.toDoItems.append(second);
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListPrototypeCell", for: indexPath)
        let toDoItem: BasicToDoItem = self.toDoItems[indexPath.row];
        cell.textLabel?.text = toDoItem.itemName;
        if (toDoItem.completed) {
            cell.accessoryType = UITableViewCellAccessoryType.checkmark;
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.none;
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false);
        let tappedItem: BasicToDoItem = self.toDoItems[indexPath.row];
        tappedItem.completed = !tappedItem.completed;
        tableView.reloadRows(at: [indexPath], with: .none);
        
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
