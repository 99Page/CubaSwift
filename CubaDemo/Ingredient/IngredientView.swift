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
    
    @State var ingredientLst = [
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
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    }

    @State var isShown: Bool = false
    
    var body: some View {
        
        ZStack {
            
//            List {
//                sectionView
//                groupSaveButton
//            }.allowsHitTesting(!isShown)
//                .opacity(isShown ? 0.35 : 1)
//                .cornerRadius(15)
                
            List {
                sectionView
            }
            
            VStack(alignment: .trailing) {
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: "plus")
                        .frame(width: 60, height: 60)
                        .background(Color.velogGreen)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                .padding(.trailing)
            }
            .frame(width: UIScreen.main.bounds.width)
            GroupSaveView(isShown: $isShown)
        }.padding()
        
    }
    
    var groupSaveButton: some View {
        Button {
            isShown.toggle()
        } label: {
            Image(systemName: "plus")
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width * 0.1, height: 40)
                .background(Color.velogGreen)
                .cornerRadius(10)
                
        }.padding(5)
    }
    
    var sectionView: some View {
        ForEach(groupKey, id: \.self) { key in
            Section(header: Text("\(key)")) {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(ingredientLst) { ingredient in
                        Text(ingredient.name)
                            .foregroundColor(ingredient.isRemain ? Color.black : Color.gray)
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
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
