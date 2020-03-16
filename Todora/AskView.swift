//
//  AskView.swift
//  Todora
//
//  Created by oscargallon on 16/03/2020.
//  Copyright © 2020 oscargallon. All rights reserved.
//

import Foundation
import SwiftUI

struct AskView: View {
    
    @State private var description : String = ""
    
    let onAction: (String) -> Void

    init(onAction: @escaping (String) -> Void){
        self.onAction = onAction
    }
    
   
    var body: some View { VStack {
        TextField("Enter task description", text: $description)
       Button(action: {
        self.onAction(self.description)
       }) {
           Text("Hitme")
       }
    }    }
}


struct AskView_Previews: SwiftUI.PreviewProvider {
    
    static var previews: some SwiftUI.View {
        AskView(onAction: { description in
            
        })
    }
}

