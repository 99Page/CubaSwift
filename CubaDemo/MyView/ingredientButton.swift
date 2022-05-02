//
//  ingredientButton.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/04/21.
//

import SwiftUI

struct ingredientButton: View {
    
    @State var igd: Ingredient
    
    init(igd: Ingredient) {
        self.igd = igd
    }
    
    var body: some View {
        Button(action: {
            igd.isRemain.toggle()
        }, label: {
            Text("\(igd.name)")
        })

    }
}

//struct ingredientButton_Previews: PreviewProvider {
//    static var previews: some View {
//        ingredientButton(item: <#T##Ingredient#>)
//    }
//}
