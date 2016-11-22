//
//  ToDoViewController.swift
//  To-do-list
//
//  Created by Eric Wong on 11/19/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//



import UIKit

protocol TaskCompletionDelegate {
    func updateTaskCompletion()
}

class ToDoViewController: UIViewController {
    
    // MARK: Properties
    var taskDelegate: TaskCompletionDelegate!
    
    
    // MARK: IBOutlets
    @IBOutlet weak var deadlineLabel: UILabel!
    
    // MARK: Functions

    
    // MARK: IBActions
    @IBAction func markUndoneButtonPressed(_ sender: UIButton) {

    }

    @IBAction func deleteToDoButtonPressed(_ sender: UIButton) {
    }
    
    
    
    // MARK: View Did Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        deadlineLabel.text = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        
    }
    

}
