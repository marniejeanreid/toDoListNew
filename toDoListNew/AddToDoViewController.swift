//
//  AddToDoViewController.swift
//  toDoListNew
//
//  Created by Marnie Reid on 8/2/21.
//  Copyright © 2021 Marnie Reid. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var descriptionInput: UITextField!
    @IBOutlet weak var switchInput: UISwitch!
    
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
    @IBAction func addButtonTapped(_ sender: UIButton) {
//        let toDo = ToDo()
//
//        if let titleText = descriptionInput
//            .text {
//            toDo.description = titleText
//            toDo.important = switchInput.isOn
//
//        }
//
//        previousVC.toDos.append(toDo)
//        previousVC.tableView.reloadData()
//
//        navigationController?.popViewController(animated: true)
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            // create a new ToDoCD object
            let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)
            
            if let titleText = descriptionInput.text {
                toDo.name = titleText
                toDo.important = switchInput.isOn
            }
            
            try? context.save()
            
            navigationController?.popViewController(animated: true)
        }
        
    }
    
}
