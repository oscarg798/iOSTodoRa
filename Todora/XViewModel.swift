//
//  XViewModel.swift
//  Todora
//
//  Created by oscargallon on 16/03/2020.
//  Copyright © 2020 oscargallon. All rights reserved.
//

import Foundation
import SharedCode
import Combine

final class XViewModel: ObservableObject, CreateTodoContractView {
  
    
    enum State {
      case asking
      case loaded(description: String)
    }
    
    @Published var state: State = .asking
    
    func show(todo: Todo) {
        state = .loaded(description: todo.todoDescription)
    }
    
    func show(todos: [Todo]) {
          
      }
      
}
