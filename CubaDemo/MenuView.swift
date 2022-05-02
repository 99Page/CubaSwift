//
//  MenuView.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/04/19.
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        VStack (alignment: .leading) {
            Image(systemName: "applelogo")
                .resizable()
                .frame(width:140, height:140)
            Text("Details")
            Text("Title")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
