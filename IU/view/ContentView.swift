//
//  ContentView.swift
//  IU
//
//  Created by Donghoon Bae on 2022/06/29.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var scheme
    var body: some View {
        ZStack{
        TabView {
            MainView()
            .background(scheme == .dark ? Color.black : Color.white)
            .shadow(color: Color.primary.opacity(0.08), radius: 5, x: 0, y: 5)
                .tabItem {
                    Image(systemName: "heart")
                    Text("Now")
            }
            TodolistView(myTodoes: MyTodo)
                .tabItem {
                    Image(systemName: "checkmark.circle")
                    Text("ToDo")
            }
            CalView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Schedule")
            }
            SettingsView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Settings")
            }
            
        }
    }
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
