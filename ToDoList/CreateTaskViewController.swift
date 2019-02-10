//
//  CreateTaskViewController.swift
//  ToDoList
//
//  Created by Wolf Wittmund on 2019-01-14.
//  Copyright © 2019 Wolf Wittmund. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addTapped(_ sender: Any) {
    
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
    task.name = taskNameTextField.text!
    task.important = importantSwitch.isOn
        
    (UIApplication.shared.delegate as! AppDelegate).saveContext()
    
        // Pop back
        
    navigationController!.popViewController(animated: true)
    }

}
