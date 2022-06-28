//
//  MainView.swift
//  IU
//
//  Created by Donghoon Bae on 2022/06/29.
//

import SwiftUI

let date1 = NSDate()

struct MainView: View {
    var body: some View {
        NavigationView {
            Form {
              
            } .navigationBarTitle("Now")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
