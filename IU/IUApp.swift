//
//  IUApp.swift
//  IU
//
//  Created by Donghoon Bae on 2022/06/29.
//

import SwiftUI

@main
struct IUApp: App {
    @StateObject private var myTodoes = MyTodo()
    
    var body: some Scene {
        WindowGroup {
            TodolistView(myTodoes: testTodoes)
            ContentView()
        }
    }
}
