//
//  MyTodo.swift
//  IU
//
//  Created by Donghoon Bae on 2022/06/29.
//

import Foundation

class MyTodo: ObservableObject {
    @Published var todoes = [Todo]()
}

struct Todo: Identifiable {
    var id = UUID()    
    var name: String
}

var testTodoes = [
    Todo(name: "HIHI"),
    Todo(name: "YS.NA")
]


