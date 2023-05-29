//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
          LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
              Section(content: {
                  ForEach(categories) { category in
                    CategoryItemView(category: category)
                  }
              }, header: {
                  SectionView(rotateClockwise: false)
              }, footer: {
                  SectionView(rotateClockwise: true)
                  Text("")
              })
          }) //: GRID
          .frame(height: 140)
          .padding(.horizontal, 15)
          .padding(.vertical, 10)
        }) //: SCROLL
    }
}

//MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
          .previewLayout(.sizeThatFits)
          .padding()
          .background(colorBackground)
    }
}
