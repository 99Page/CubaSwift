//
//  GroupManager.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/04/25.
//

import Foundation

class GroupManager: ObservableObject {
    
    @Published var groups: [String] = []
    let defaults = UserDefaults.standard
    
    init() {
        groups = defaults.stringArray(forKey: "Groups") ?? [String]()
    }
    
    func saveGroup(group: String) {
        self.groups.append(group)
        defaults.set(groups, forKey: "Groups")
        groups = defaults.stringArray(forKey: "Groups") ?? [String]()
    }
    
    
}
