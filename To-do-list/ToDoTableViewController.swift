//
//  ToDoTableViewController.swift
//  To-do-list
//
//  Created by Eric Wong on 11/19/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController, UpdateToDoDelegate, TaskCompletionDelegate {

    // MARK: Properties
    var toDoArray = [ToDoTask]()
    
    
    // MARK: Functions
    func addNewTask(task: ToDoTask) {
        toDoArray.append(task)
        tableView.reloadData()
    }
    
    func updateTaskCompletion(task: ToDoTask) {
        for i in 0..<toDoArray.count {
            if task === toDoArray[i]
            
        }
    }
    
    func deleteTask(task: ToDoTask) {
        for i in 0..<toDoArray.count {
            if task === toDoArray[i] {
            toDoArray.remove(at: i)
            }
        }
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "destinationVC" {
        let destinationVC = segue.destination as! AddToDoViewController
            destinationVC.toDoDelegate = self
        } else if segue.identifier == "TaskCompletionVC" {
        let destinationVC = segue.destination as! ToDoViewController
            destinationVC.taskDelegate = self
            destinationVC.task = toDoArray[tableView.indexPathForSelectedRow!.row]
            let arrayLabel = toDoArray[tableView.indexPathForSelectedRow!.row].deadline
            destinationVC.deadlineLabelText = arrayLabel
//            destinationVC.deadlineLabel.text = arrayLabel
        }
    }
    
    // MARK: View Did Load Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "TaskCompletionVC", sender: Any?.self)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoView") as! ToDoTableViewCell
        cell.ToDoTableVC = self
        let toDoTask = toDoArray[indexPath.row]
        cell.taskLabel.text = toDoTask.title
        cell.deadlineLabel.text = "Deadline: \(toDoTask.deadline)"
        

        
        return cell
    }


}
