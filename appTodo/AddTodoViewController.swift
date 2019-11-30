//
//  AddTodoViewController.swift
//  appTodo
//
//  Created by Pragya Gurung on 2019-11-29.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import UIKit

class AddTodoViewController: UIViewController {
    
    var previousVC = TodoTableViewController()

    @IBOutlet weak var todoTitle: UITextField!
    
    @IBOutlet weak var todoText: UITextView!
    
    @IBOutlet weak var completeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func AddButton(_ sender: Any) {
        
        let toDo = Todo()
        toDo.title = todoTitle.text!
        toDo.text = todoText.text!
        toDo.complete = completeSwitch.isOn
        
        previousVC.toDos.append(toDo)
        
        previousVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
    }
}
