//
//  menuView.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/04/19.
//

import SwiftUI

struct menuView: View {
    
    @Binding var menuInfos : [Menu]
    
    var body: some View {
        ForEach(menuInfos) { menuInfo in
            VStack (alignment: .leading) {
                Image(systemName: menuInfo.image)
                    .resizable()
                    .frame(width:140, height:140)
                    .fixedSize()
                Text(menuInfo.description)
                    .foregroundColor(.gray)
                Text(menuInfo.title)
            }
        }
    }
}

//struct menuView_Previews: PreviewProvider {
//
//    @State var menu = [
//        Menu(image: "applelogo", title: "applelogo", description: "very long long long long long long description"),
//        Menu(image: "pencil.tip", title: "pencil.tip", description: "description 2"),
//        Menu(image: "trash.square.fill", title: "trash.square.fill", description: "description 3"),
//        Menu(image: "lasso", title: "lasso", description: "very long long long long long long description"),
//        Menu(image: "paperplane", title: "paperplane", description: "description 5"),
//        Menu(image: "tray", title: "tray", description: "description 6"),
//        Menu(image: "doc", title: "doc", description: "description 7"),
//        Menu(image: "speaker", title: "speaker", description: "description 8")
//    ]
//
//    static var previews: some View {
//        menuView(menuInfos: $menu)
//    }
//}
