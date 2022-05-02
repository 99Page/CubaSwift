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
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            List {
                sectionView
            }
            
            Button {
                
            } label: {
                Image(systemName: "plus")
            }
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
