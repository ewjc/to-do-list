//
//  AddToDoViewController.swift
//  To-do-list
//
//  Created by Eric Wong on 11/19/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    // MARK: Properties
    
    
    // MARK: Functions
    
    
    // MARK: IBOutlets
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var deadLinePicker: UIPickerView!
    
    // MARK: IBActions
    @IBOutlet weak var saveButtonPressed: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    // MARK: View Did Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
}
