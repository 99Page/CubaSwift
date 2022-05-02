//
//  GroupSaveView.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/05/02.
//

import SwiftUI

struct GroupSaveView: View {
    
    @Binding var isShown: Bool
    @State var text = "그룹을 입력하세요"
    let screenSize = UIScreen.main.bounds
    let title = "그룹 추가"
    
    var body: some View {
        VStack {
           Text(title)
           TextField("텍스트 필드", text: $text)
           HStack {
               Button("추가") {
                   isShown.toggle()
               }
               Button("취소") {
                   isShown.toggle()
               }
           }
        }.padding()
           .frame(width: screenSize.width * 0.7, height: screenSize.height * 0.3)
           .background(.gray)
           .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
           .offset(y: isShown ? 0 : screenSize.height)
    }
}

struct GroupSaveView_Previews: PreviewProvider {
    static var previews: some View {
        GroupSaveView(isShown: .constant(false))
    }
}
