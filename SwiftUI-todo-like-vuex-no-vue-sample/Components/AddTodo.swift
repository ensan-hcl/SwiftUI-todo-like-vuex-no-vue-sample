//
//  AddTodo.swift
//  SwiftUI-todo-like-vuex-no-vue-sample
//
//  Created by β α on 2021/04/12.
//

import SwiftUI

struct AddTodo: View {
    @State private var input = ""
    var body: some View {
        HStack{
            TextField("Todoを入力", text: $input)
            Button("Add a task"){
                AppState.shared.addTodo(title: input)
                input = ""
            }
        }
    }
}
