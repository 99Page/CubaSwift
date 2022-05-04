//
//  MyTabView.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/04/25.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            IngredientView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Ingredient")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
            
            WriteRecipeView()
                .tabItem {
                    Image(systemName: "plus.app")
                    Text("Recipe")
                }
        }.accentColor(.velogGreen)
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
