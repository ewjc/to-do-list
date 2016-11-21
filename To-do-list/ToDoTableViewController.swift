//
//  ToDoTableViewController.swift
//  To-do-list
//
//  Created by Eric Wong on 11/19/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController, UpdateToDoDelegate {

    // MARK: Properties
    
    var toDoArray: [ToDoTask] = []
    
    
    // MARK: Functions
    func updateNewTask(task: ToDoTask) {
        toDoArray.append(task)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "destinationVC" {
        let destinationVC = segue.destination as! AddToDoViewController
            destinationVC.toDodelegate = self
        }
    }
    
    // MARK: View Did Load Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(toDoArray)
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
        return toDoArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoView") as! ToDoTableViewCell

        let toDoTask = toDoArray[indexPath.row]
        cell.taskLabel.text = toDoTask.title
        cell.deadlineLabel.text = "\(toDoTask.deadline)"
        
        return cell
    }


}
