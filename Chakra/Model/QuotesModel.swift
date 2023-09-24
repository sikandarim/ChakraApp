//
//  QuotesModel.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-06-18.
//

import Foundation

struct QuotesModel: Codable, Identifiable {
    let id : String
    let name: String
    let quotes:[String]
  
}

