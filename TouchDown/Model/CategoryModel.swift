//
//  CategoryModel.swift
//  TouchDown
//
//  Created by M_2195552 on 2023-05-29.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}
