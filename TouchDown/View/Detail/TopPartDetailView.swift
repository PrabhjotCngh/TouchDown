//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - Properties
    @State private var isAnimating: Bool = false

    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            //Price
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                  .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                  .font(.largeTitle)
                  .fontWeight(.black)
                  .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            //Photo
            Image(sampleProduct.image)
              .resizable()
              .scaledToFit()
              .offset(y: isAnimating ? 0 : -35)
        } //: HStack
        .onAppear() {
            withAnimation(.easeOut(duration: 0.75)) {
              isAnimating.toggle()
            }
        }
    }
}

//MARK: - Preview
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
          //.environmentObject(Shop())
          .previewLayout(.sizeThatFits)
          .padding()
    }
}
