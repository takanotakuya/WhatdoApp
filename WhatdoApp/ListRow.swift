//
//  ListRow.swift
//  WhatdoApp
//
//  Created by 髙野拓弥 on 2021/04/17.
//

import SwiftUI

struct ListRow: View {
    let task: String
    
    var body: some View {
        HStack {
            Text("□")
            Text(task)
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task: "料理")
    }
}
