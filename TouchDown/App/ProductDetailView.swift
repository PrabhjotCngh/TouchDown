//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //Navbar
            NavigationBarDetailView()
              .padding(.horizontal)
              .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            //Header
            HeaderDetailView()
              .padding(.horizontal)
            
            //Detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //Detail bottom part
            VStack(alignment: .center, spacing: 0) {
                // Rating + size
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(sampleProduct.description)
                      .font(.system(.body, design: .rounded))
                      .foregroundColor(.gray)
                      .multilineTextAlignment(.leading)
                } //: ScrollView
                
                // Quantity + Favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 0)
                
                // Add to cart
                AddToCartDetailView()
                    .padding(.vertical, 20)
            } //: VStack
            .padding(.horizontal)
            .background(
              Color.white
                .clipShape(CustomShape())
                .padding(.top, -105)
            )
        } //: VStack
        .zIndex(0)
        .ignoresSafeArea()
        .background(
          Color(
            red: sampleProduct.red,
            green: sampleProduct.green,
            blue: sampleProduct.blue
          ).ignoresSafeArea()
        )
    }
}

//MARK: - Preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
      ProductDetailView()
        //.environmentObject(Shop())
        .previewLayout(.fixed(width: 375, height: 812))
    }
}
