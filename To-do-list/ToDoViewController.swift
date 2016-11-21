//
//  ToDoViewController.swift
//  To-do-list
//
//  Created by Eric Wong on 11/19/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class ToDoViewController: UIViewController {
    
    // MARK: Properties
    
    
    // MARK: IBOutlets
    @IBOutlet weak var deadlineLabel: UILabel!
    
    // MARK: Functions

    
    // MARK: IBActions
    @IBOutlet weak var markAsDone: UIButton!
    @IBOutlet weak var deleteThisToDoButton: UIButton!
    
    
    
    // MARK: View Did Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        
    }
    

}
