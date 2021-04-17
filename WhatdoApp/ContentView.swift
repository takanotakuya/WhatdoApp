//
//  ContentView.swift
//  WhatdoApp
//
//  Created by 髙野拓弥 on 2021/04/17.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    Button(action: {
                        guard let index = self.userData.tasks.firstIndex(of: task) else {
                            return
                        }
                        
                        self.userData.tasks[index].checked.toggle()
                    })
                    {
                        ListRow(task: task.title, isCheck: task.checked)
                    }
                }
                
                Text("+")
                    .font(.title)
            }
            .navigationBarTitle(Text("DREAM LISTS"))
            .navigationBarItems(trailing: Button(action: {
                DeleteTask()
            })
            {
                Text("Delete")
            }
            )
        }
    }
    
    func DeleteTask() {
        let necessaryTask = self.userData.tasks.filter({!$0.checked})
        self.userData.tasks = necessaryTask
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
