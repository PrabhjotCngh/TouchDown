//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
              .font(.system(.title2, design: .rounded))
              .fontWeight(.bold)
              .foregroundColor(.white)
            Spacer()
        } //: Button
        .padding(15)
        .background(
          Color(
            red:  sampleProduct.red,
            green: sampleProduct.green,
            blue: sampleProduct.blue
          )
        )
        .clipShape(Capsule())

    }
}

//MARK: - Preview
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
          //.environmentObject(Shop())
          .previewLayout(.sizeThatFits)
          .padding()
    }
}
