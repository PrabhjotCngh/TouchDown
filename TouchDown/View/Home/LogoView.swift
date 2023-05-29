//
//  LogoView.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import SwiftUI

struct LogoView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        HStack(spacing: 4) {
          Text("Touch".uppercased())
            .font(.title3)
            .fontWeight(.black)
            .foregroundColor(.black)
          
          Image("logo-dark")
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 30, alignment: .center)
          
          Text("Down".uppercased())
            .font(.title3)
            .fontWeight(.black)
            .foregroundColor(.black)
        } //: HSTACK
    }
}

//MARK: - Preview
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
          .previewLayout(.sizeThatFits)
          .padding()
    }
}
