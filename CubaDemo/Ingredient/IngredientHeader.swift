//
//  IngredientHeader.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/05/05.
//

import SwiftUI

struct IngredientHeader: View {
    
    let text: String = "header"
    
    var body: some View {
        HStack {
            
            Button {
            } label: {
                Text(text)
                    .background(Color.white)
                    .foregroundColor(Color.gray)
                    .font(.callout)
            }.padding(.leading)
            Spacer()
        }
    }
}

struct IngredientHeader_Previews: PreviewProvider {
    static var previews: some View {
        IngredientHeader()
    }
}
