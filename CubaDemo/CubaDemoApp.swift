//
//  CubaDemoApp.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/04/14.
//

import SwiftUI
import FirebaseCore
import Firebase

@main
struct CubaDemoApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
