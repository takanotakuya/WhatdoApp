//
//  UserData.swift
//  WhatdoApp
//
//  Created by 髙野拓弥 on 2021/04/17.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var tasks = [
        Task(title: "例) ナスカの地上絵を見に行く", checked: true),
        Task(title: "例) ログハウスを建てる", checked: false),
        Task(title: "例) マスタングを買う", checked: true)
    ]
    
    @Published var isEditing: Bool = false
}
