//
//  HomeView.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/04/14.
//

import SwiftUI

extension Color {
    static let velogGreen = Color("velogGreen")
}

struct HomeView: View {
    
    @State var menuInfos = [
        Menu(image: "applelogo", title: "applelogo", description: "very long long long long long long description"),
        Menu(image: "pencil.tip", title: "pencil.tip", description: "description 2"),
        Menu(image: "trash.square.fill", title: "trash.square.fill", description: "description 3"),
        Menu(image: "lasso", title: "lasso", description: "very long long long long long long description"),
        Menu(image: "paperplane", title: "paperplane", description: "description 5"),
        Menu(image: "tray", title: "tray", description: "description 6"),
        Menu(image: "doc", title: "doc", description: "description 7"),
        Menu(image: "speaker", title: "speaker", description: "description 8")
    ]
    
    var column: [GridItem] {
        [
        GridItem(.fixed(180)),
        GridItem(.fixed(180)),
        ]
    }

    var body: some View {
        
        ScrollView {
            VStack {
                Text("Menu")
                    .font(.title)
                LazyVGrid(columns: column, content: {
                    menuView(menuInfos: $menuInfos)
                })

            }
        }
        
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
