//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - Property
    let player: Player
    
    // MARK: - Body
    var body: some View {
      Image(player.image)
        .resizable()
        .scaledToFit()
        .cornerRadius(12)
    }
}

//MARK: - Preview
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
          .previewLayout(.sizeThatFits)
          .padding()
          .background(colorBackground)
    }
}
