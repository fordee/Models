//
//  MongoProduct.swift
//  
//
//  Created by John Forde on 6/08/22.
//

import Foundation
import SwiftBSON
//import MongoSwift
//import SwiftUI


public struct MongoProduct: Codable, Hashable, MongoIdentifiable {
  public var _id: BSONObjectID?
  public let name: String
  public let description: String
  public var imagePath: String
  public let stock: Int
//  public let averagePurchasePrice: Double
  public let sellingPrice: Double
  public let bestByDate: Date?
  public var categories: [String] = []

  public init(_id: BSONObjectID? = nil, name: String, description: String, imagePath: String, stock: Int, sellingPrice: Double, bestByDate: Date? = nil, categories: [String] = []) {
    self._id = _id
    self.name = name
    self.description = description
    self.imagePath = imagePath
    self.stock = stock
//    self.averagePurchasePrice = averagePurchasePrice
    self.sellingPrice = sellingPrice
    self.bestByDate = bestByDate
    self.categories = categories
  }

  public var id: BSONObjectID? {
    _id
  }
}
