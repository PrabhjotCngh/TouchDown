//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        TabView {
          ForEach(players) { player in
            FeaturedItemView(player: player)
              .padding(.top, 10)
              .padding(.horizontal, 15)
          }
        } //: TabView
        .tabViewStyle(.page)
    }
}

//MARK: - Preview
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
          .previewDevice("iPhone 14 Pro")
          .background(Color.gray)
    }
}
