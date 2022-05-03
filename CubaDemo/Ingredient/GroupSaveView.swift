//
//  GroupSaveView.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/05/02.
//

import SwiftUI

struct GroupSaveView: View {
    
    @Binding var isShown: Bool
    @State var text = ""
    let screenSize = UIScreen.main.bounds
    private let title = "그룹 추가"
    private let hint = "그룹을 추가하세요"
    
    var body: some View {
        VStack(spacing: 25) {
           Text(title)

           TextField(hint, text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack(spacing: 25) {
               Button("Cancel") {
                   buttonEvent()
               }
               
               Button("OK") {
                   buttonEvent()
               }
           }
        }.padding(10)
           .frame(width: screenSize.width * 0.7, height: screenSize.height * 0.2)
           .background(Color.white)
           .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
           .offset(y: isShown ? 0 : screenSize.height)
           .shadow(color: .gray, radius: 6, x: -9, y: -9)
    }
    
    func buttonEvent() {
        isShown.toggle()
        text = ""
    }
}

struct GroupSaveView_Previews: PreviewProvider {
    static var previews: some View {
        GroupSaveView(isShown: .constant(true))
    }
}
