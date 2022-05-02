//
//  GroupSectionView.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/05/02.
//

import SwiftUI

struct GroupSectionView: View {
    
    @Binding var group: String
    
    var body: some View {
        HStack {
            Text(group)
            Button {
                
            } label: {
                Image(systemName: "plus")
            }

        }
    }
}

struct GroupSectionView_Previews: PreviewProvider {
    static var previews: some View {
        GroupSectionView(group: .constant("Group"))
    }
}
