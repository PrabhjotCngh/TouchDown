//
//  FooterView.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import SwiftUI

struct FooterView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
          Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .layoutPriority(2)
          
          Image("logo-lineal")
            .renderingMode(.template)
            .foregroundColor(.gray)
            .layoutPriority(0)
          
          Text("Copyright © Prabhjot Singh\nAll right reserved")
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .layoutPriority(1)
        } //: VSTACK
        .padding()
    }
}

//MARK: - Preview
struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
          .previewLayout(.sizeThatFits)
          .background(colorBackground)
    }
}
