//
//  RatingSizesDetailView.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import SwiftUI

struct RatingSizesDetailView: View {
    //MARK: - Properties
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            // Ratings
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button {} label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        } //: Button
                    } //: Loop
                } //: HStack
            } //: VStack
            
            Spacer()
            
            //Sizes
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(sizes, id: \.self) { item in
                        Button {} label: {
                            Text(item)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                ) //: Text
                        } //: Button
                    } //: Loop
                } //: HStack
            } //: VStack
        } //: HStack
    }
}

//MARK: - Preview
struct RatingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
