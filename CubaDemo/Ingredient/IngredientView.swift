//
//  IngredientView.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/04/14.
//

import SwiftUI




struct IngredientView: View {
    
    var groupKey: [String] {
        igdGrouped.map( { $0.key })
    }
    
    var igdGrouped: [String: [Ingredient]] {
        Dictionary(grouping: ingredientLst) { $0.group }
    }
    
    var ingredientLst = [
        Ingredient(group: "주재료", name: "삼겹살", isRemain: true),
        Ingredient(group: "주재료", name: "스파게티면", isRemain: true),
        Ingredient(group: "주재료", name: "콩나물", isRemain: true),
        Ingredient(group: "주재료", name: "닭가슴살", isRemain: true),
        Ingredient(group: "소스", name: "토마토 소스", isRemain: true),
        Ingredient(group: "소스", name: "간장", isRemain: true),
        Ingredient(group: "소스", name: "물엿", isRemain: true)
    ]
    
    var columns: [GridItem] {
        [
            GridItem(.adaptive(minimum: 80, maximum: 500))
        ]
    }
    
    @State var isShown: Bool = false
    
    var body: some View {
        
        ZStack {
            
            VStack {
                List {
                    sectionView
                }
                
                Button {
                    isShown.toggle()
                } label: {
                    Text("**그룹 추가**")
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 30, height: 40)
                        .background(Color.velogGreen)
                        .cornerRadius(10)
                        
                }
                
                Spacer(minLength: 10)
            }.allowsHitTesting(!isShown)
                .opacity(isShown ? 0.35 : 1)
            
            GroupSaveView(isShown: $isShown)
            
            
      

        }
        
    }
    
    var sectionView: some View {
        ForEach(groupKey, id: \.self) { key in
            Section(header: Text("\(key)")) {
                LazyVGrid(columns: columns) {
                    ForEach(igdGrouped[key]!) {
                        Text("\($0.name)")
                    }
                }
            }
        }
    }
}


struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientView()
    }
}
