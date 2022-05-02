//
//  GroupView.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/04/25.
//

import SwiftUI

struct GroupView: View {
    
    @EnvironmentObject var groupManager: GroupManager
    
    var body: some View {
        
        List {
            ForEach(groupManager.groups, id: \.self) { group in
                Text(group)
            }
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
