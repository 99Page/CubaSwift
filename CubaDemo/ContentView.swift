//
//  ContentView.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/04/14.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State var isLogined: Bool = false
    
    var body: some View {
        
        ZStack {
            
            if !isLogined {
                LoginView(isLogined: $isLogined)
            } else {
                MyTabView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

