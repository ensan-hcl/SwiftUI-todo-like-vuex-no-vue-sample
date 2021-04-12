//
//  ContentView.swift
//  SwiftUI-todo-like-vuex-no-vue-sample
//
//  Created by β α on 2021/04/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            AddTodo()
            TodoList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
