//
//  CustomShape.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import SwiftUI

struct CustomShape: Shape {
    //MARK: - Functions
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

//MARK: - Preview
struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
          .previewLayout(.fixed(width: 428, height: 120))
          .padding()
    }
}
