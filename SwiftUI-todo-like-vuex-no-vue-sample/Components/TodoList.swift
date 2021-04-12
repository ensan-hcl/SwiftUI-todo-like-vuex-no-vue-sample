//
//  TodoList.swift
//  SwiftUI-todo-like-vuex-no-vue-sample
//
//  Created by β α on 2021/04/12.
//

import SwiftUI

struct TodoList: View {
    @ObservedObject private var todoState = AppState.shared.todoState
    var body: some View {
        List(todoState.todoList.indices, id: \.self){ i in
            Text("・\(todoState.todoList[i].title)")
        }
    }
}
