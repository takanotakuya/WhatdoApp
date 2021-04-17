//
//  Draft.swift
//  WhatdoApp
//
//  Created by 髙野拓弥 on 2021/04/17.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    
    var body: some View {
        TextField("やりたいことを入力して下さい", text: $taskTitle)
    }
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}
