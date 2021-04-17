//
//  ContentView.swift
//  WhatdoApp
//
//  Created by 髙野拓弥 on 2021/04/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Text("□")
                    Text("散歩")
                }
                Text("料理")
                Text("筋トレ")
                Text("+")
                    .font(.title)
            }
            .navigationBarTitle(Text("DREAM LISTS"))
            .navigationBarItems(trailing: Text("Delete"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
