//
//  ViewController.swift
//  Todora
//
//  Created by oscargallon on 15/03/2020.
//  Copyright © 2020 oscargallon. All rights reserved.
//

import UIKit
import SharedCode

class ViewController: UIViewController, CreateTodoContractView {
  
    @IBOutlet weak var btnAdd: UIButton!
    
    @IBOutlet weak var etDescription: UITextField!
    
    @IBOutlet weak var lbl: UILabel!
   
    let presenter: TodoPresenter? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let repo = TodoClientRepository(todoService: KtorTodoService())
        let createInteractor = CreateTodoInteractor(todoRepository: repo)
        let getTodoInteractor = GetTodosInteractor(todoRepository: repo)
           let presenter = TodoPresenter(createTodoInteractor: createInteractor, getTodosInteractor: getTodoInteractor, dispatchersProvider: TodoDispatcherProvider())
        presenter.bind(view: self)

        // Do any additional setup after loading the view.
    }

    func show(todo: Todo) {
        lbl.text = todo.todoDescription
    }
       
    func show(todos: [Todo]) {
        lbl.text = todos[0].todoDescription
      }
    
    @IBAction func onClick(_ sender: Any) {
        let description = etDescription.text
        guard description != nil else {
            return
        }
        
        presenter?.create(description: description!)

    }
}
