//
//  ToDoViewController.swift
//  To-do-list
//
//  Created by Eric Wong on 11/19/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//



import UIKit

protocol TaskCompletionDelegate {
    func updateTaskCompletion(task: ToDoTask)
    func deleteTask(task: ToDoTask)
}

class ToDoViewController: UIViewController {

    
    // MARK: Properties
    var taskDelegate: TaskCompletionDelegate!
    var deadlineLabelText: String!
    var task: ToDoTask!
    
    // MARK: IBOutlets
    @IBOutlet weak var deadlineLabel: UILabel!
    
    // MARK: Functions

    
    // MARK: IBActions
    @IBAction func markUndoneButtonPressed(_ sender: UIButton) {
        taskDelegate.updateTaskCompletion(task: task)
    }

    @IBAction func deleteToDoButtonPressed(_ sender: UIButton) {
        taskDelegate.deleteTask(task: task)
        performSegue(withIdentifier: "unwindToVC", sender: self)
    }
    
    
    
    // MARK: View Did Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        deadlineLabel.text = deadlineLabelText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        
    }
    

}
