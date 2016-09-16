//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by MAC on 9/13/16.
//  Copyright © 2016 MAC. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var ImportantSwitch: UISwitch!
    
    
    var previousVC = TasksViewController()
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(sender: AnyObject) {
        //Create a Task From the outlet
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = ImportantSwitch.on
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewControllerAnimated(true)
        
    }
    
  

 

}
