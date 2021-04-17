//
//  UserTask.swift
//  WhatdoApp
//
//  Created by 髙野拓弥 on 2021/04/17.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var checked: Bool
    
    init(title: String, checked: Bool) {
        self.title = title
        self.checked = checked
    }
}
