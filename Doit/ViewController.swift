//
//  ViewController.swift
//  Doit
//
//  Created by MAC on 9/13/16.
//  Copyright © 2016 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
       
        tasks = makeTask()
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let task = tasks [indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"

        }else {
        cell.textLabel?.text = task.name
        }
            return cell
        
    }
    func makeTask() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the Dog"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Get Cheese"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Go to Gym"
        task3.important = false
        
        return [ task1, task2, task3]
        
    }
   
    }



