//
//  SettingsView.swift
//  IU
//
//  Created by Donghoon Bae on 2022/06/29.
//

import SwiftUI

struct NameView: View {
        @State var name: String = ""
    
    var body: some View {
        TextField("Enter your name", text: $name)
        .padding()
    }
}


struct SettingsView: View {
    @State private var enableAlert = false

    
    var notificationMode = ["", "", ""]
    @State private var selectedMode = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("About")) {
                    HStack {
                        NavigationLink(destination: NameView()) {
                        Text("Name")
                        Spacer()
                            Text("")
                            
                        }
                    }
                    
                    HStack {
                        Text("Software Version")
                        Spacer()
                        Text("1")
                    }
                }
                Section(header: Text("General Settings")){
                    Toggle(isOn: $enableAlert) {
                        Text("Alert")
                    }
                    
                    Picker(selection: $selectedMode, label: Text("Notifications")) {
                        ForEach(0..<notificationMode.count) {
                            Text(self.notificationMode[$0])
                        }
                    }
                }
                
            } .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
