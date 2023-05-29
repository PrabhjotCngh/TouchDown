//
//  TitleView.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import SwiftUI

struct TitleView: View {
    //MARK: - Properties
    var title: String

    //MARK: - Body
    var body: some View {
        HStack {
          Text(title)
            .font(.largeTitle)
            .fontWeight(.heavy)
          
          Spacer()
        } //: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

//MARK: - Preview
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
          .previewLayout(.sizeThatFits)
          .background(colorBackground)
    }
}
