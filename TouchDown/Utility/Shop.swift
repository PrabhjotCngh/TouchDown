//
//  File.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? //= nil
}
