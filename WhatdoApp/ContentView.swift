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
                ListRow(task: "散歩", isCheck: true)
                ListRow(task: "料理", isCheck: false)
                ListRow(task: "筋トレ", isCheck: true)
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
