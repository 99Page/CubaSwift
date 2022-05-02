//
//  Ingredient.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/05/02.
//

import Foundation

struct Ingredient : Identifiable {
    var id = UUID()
    var group: String = ""
    var name: String = ""
    var isRemain: Bool = true
}
