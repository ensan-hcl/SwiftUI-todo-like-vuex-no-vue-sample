//
//  Store.swift
//  SwiftUI-todo-like-vuex-no-vue-sample
//
//  Created by β α on 2021/04/12.
//

import Foundation
import SwiftUI
struct TodoItem {
    var title: String
    var completed: Bool
}

class TodoState: ObservableObject {
    @Published fileprivate(set) var todoList: [TodoItem] = []
}

struct AppState {
    private init(){}
    static var shared = Self()
    private(set) var todoState: TodoState = .init()

    mutating func addTodo(title: String) {
        self.todoState.todoList.append(.init(title: title, completed: false))
    }
}
