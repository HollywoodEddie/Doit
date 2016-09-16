//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by MAC on 9/14/16.
//  Copyright © 2016 MAC. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    
    
    @IBOutlet weak var taskLabel: UILabel!
    
    var task = Task()
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            taskLabel.text = "❗️\(task.name)"
            
        }else {
            taskLabel.text = task.name
        }

        
    }
    
    @IBAction func completeTapped(sender: AnyObject) {
        previousVC.tasks.removeAtIndex(previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewControllerAnimated(true)
        
    }
    
    
    
}
