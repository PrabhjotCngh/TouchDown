//
//  BrandGridView.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
              ForEach(brands) { brand in
                BrandItemView(brand: brand)
              } //: Loop
            } //: LazyHGrid
            .frame(height: 200)
            .padding(15)
        } //: ScrollView
    }
}

//MARK: - Preview
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
          .previewLayout(.sizeThatFits)
          .background(colorBackground)
    }
}
