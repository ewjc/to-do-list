//
//  ToDoTableViewCell.swift
//  To-do-list
//
//  Created by Eric Wong on 11/19/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var deadlineLabel: UILabel!
    @IBOutlet weak var markCompleteButton: UIButton!
    
    
    // MARK: IBActions
    @IBAction func markCompleteButtonPressed(_ sender: UIButton) {
    }

    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
