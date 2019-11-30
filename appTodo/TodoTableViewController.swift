//
//  TodoTableViewController.swift
//  appTodo
//
//  Created by Pragya Gurung on 2019-11-29.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import UIKit

class TodoTableViewController: UITableViewController {
    var toDos : [Todo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
        
    }
    
    func createToDos() -> [Todo]{
        let grocery = Todo()
        grocery.title = "Grocery stuffs"
        grocery.text = "Buy eggs, bread and milk"
        
        let homework = Todo()
        homework.title = "Homeworks"
        homework.text = "IOS, Android, Web"
        homework.complete = true
        
        return [grocery, homework]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let toDo = toDos[indexPath.row]
        if toDo.complete{
            cell.textLabel?.text = "✅ " + toDo.title
        }
        else
        {
            cell.textLabel?.text = toDo.title
        }
        

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let addVC = segue.destination as! AddTodoViewController
            addVC.previousVC = self
    }
}
