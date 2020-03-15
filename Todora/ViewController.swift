//
//  ViewController.swift
//  Todora
//
//  Created by oscargallon on 15/03/2020.
//  Copyright © 2020 oscargallon. All rights reserved.
//

import UIKit
import SharedCode

class ViewController: UIViewController,View {
   

    @IBOutlet weak var btnAdd: UIButton!
    
    @IBOutlet weak var etDescription: UITextField!
    
    @IBOutlet weak var lbl: UILabel!
    let presenter = TodoPresenter(todoraInteractor: GetTodoraInteractor(todoRepository: TodoClientRepository()))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.bind(view: self)

        // Do any additional setup after loading the view.
    }

    func show(todo: Todo) {
        lbl.text = todo.todoDescription
    }
       

    @IBAction func onClick(_ sender: Any) {
        let description = etDescription.text
        guard description != nil else {
            return
        }
        
        presenter.create(description: description!)

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
