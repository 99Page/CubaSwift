//
//  LoginView.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/04/25.
//

import SwiftUI
import Firebase

struct LoginView: View {
    
    @Binding var isLogined: Bool
    
    @AppStorage("lastEmail") var lastEmail: String = ""
    @AppStorage("lastPW") var lastPW: String = ""
    
    var body: some View {
        VStack {
            TextField("Email", text: $lastEmail)
            SecureField("Password", text: $lastPW)
            Button(action: { login() }) {
                Text("Sign in")
            }
        }
        .padding()
        .onAppear {
            login()
        }
    }
    
    func login() {
       Auth.auth().signIn(withEmail: lastEmail, password: lastPW) { (result, error) in
           if error != nil {
               print(error?.localizedDescription ?? "")
           } else {
               print("success")
               isLogined = true
           }
       }
   }
}
