//
//  AddToDoViewController.swift
//  To-do-list
//
//  Created by Eric Wong on 11/19/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

protocol UpdateToDoDelegate {
    func updateNewTask(task: ToDoTask)
}

class AddToDoViewController: UIViewController {
    
    // MARK: Properties
    var toDodelegate: UpdateToDoDelegate!
    
    // MARK: Functions
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        let text = textField.text!
        let deadline = datePicker.date
        print(text)
        print(deadline)
        let task = ToDoTask(title: text, deadline: deadline)
        
        toDodelegate?.updateNewTask(task: task)
    }
    

    // MARK: IBOutlets
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!

    // MARK: IBActions
    @IBOutlet weak var cancelButton: UIButton!
    
    // MARK: View Did Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.datePickerMode = UIDatePickerMode.date
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
}
