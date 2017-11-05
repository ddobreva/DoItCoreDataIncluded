//
//  TasksViewController.swift
//  DoIt
//
//  Created by Denitsa Dobreva on 11/5/17.
//  Copyright © 2017 Denitsa Dobreva. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    
    
    @IBOutlet weak var tableView: UITableView!
    
   
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        cell.textLabel?.text = task.name
        return cell
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Go out"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Clean floor"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Be nice"
        task3.important = true
        
        return[task1, task2, task3]
    }
}

