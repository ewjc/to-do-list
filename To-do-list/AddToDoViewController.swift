//
//  AddToDoViewController.swift
//  To-do-list
//
//  Created by Eric Wong on 11/19/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

protocol UpdateToDoDelegate {
    func addNewTask(task: ToDoTask)
}

class AddToDoViewController: UIViewController {
    
    // MARK: Properties
    var toDoDelegate: UpdateToDoDelegate!
    let dateFormatter = DateFormatter()
    
    // MARK: Functions
    func dismissViewController() {
        presentingViewController?.dismiss(animated: true)
    }
    
    
    // MARK: IBActions
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        let text = textField.text!
        let deadline = datePicker.date
        dateFormatter.dateStyle = .medium
        let strDeadline = dateFormatter.string(from: deadline)
        let task = ToDoTask(title: text, deadline: strDeadline)
        print(task.deadline, task.title)
        toDoDelegate?.addNewTask(task: task)
        dismissViewController()
    }

    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        dismissViewController()
    }
    

    // MARK: IBOutlets
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!

    
    // MARK: View Did Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.datePickerMode = UIDatePickerMode.date
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
