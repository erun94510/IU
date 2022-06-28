//
//  TodolistView.swift
//  IU
//
//  Created by Donghoon Bae on 2022/06/29.
//

import SwiftUI

struct TodolistView: View {
    
    @State public var myTodoes: MyTodo
    @State var searchingString = ""
    @State public var dates = [Int]()
    @State public var currentNumber = 1
    
    var body: some View {
        VStack{
            NavigationView {
                VStack{
                    Form {
                        VStack{
                            List {
                                ForEach(myTodoes.todoes){ todoes in
                                    Text(todoes.name)
                                }
                                .onDelete(perform: deleteFunc)
                                .onMove(perform: moveFunc)
                            }
                        }
                    }
                    .navigationBarTitle("Todo", displayMode: .large)
                    .toolbar {
                        ToolbarItemGroup(placement: .navigationBarTrailing) {
                            Button("+") {
                                self.dates.append(self.currentNumber)
                            }.padding()
                        }
                        ToolbarItemGroup(placement: .navigationBarLeading) {
                            EditButton()
                        }
                    }
                }
            }
        }
    }
    func deleteFunc(at offsets: IndexSet) {
        dates.remove(atOffsets: offsets)
    }
    func moveFunc(from source: IndexSet, to destination: Int){
        dates.move(fromOffsets: source, toOffset: destination)
    }
}



struct TodolistView_Previews: PreviewProvider {
    static var previews: some View {
        let testTodo = MyTodo()
        testTodo.todoes = testTodoes
        return TodolistView(myTodoes: testTodo)
    }
}
