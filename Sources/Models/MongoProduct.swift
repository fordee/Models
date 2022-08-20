//
//  MongoProduct.swift
//  
//
//  Created by John Forde on 6/08/22.
//

import Foundation
import SwiftBSON

public struct MongoProduct: Identifiable, Codable, MongoIdentifiable {
  public var _id: BSONObjectID?
  public let name: String
  public let description: String
  public let imagePath: String
  public let stock: Int
  public let averagePurchasePrice: Double
  public let sellingPrice: Double
  public let bestByDate: Date

  public init(_id: BSONObjectID? = nil, name: String, description: String, imagePath: String, stock: Int, averagePurchasePrice: Double, sellingPrice: Double, bestByDate: Date) {
    self._id = _id
    self.name = name
    self.description = description
    self.imagePath = imagePath
    self.stock = stock
    self.averagePurchasePrice = averagePurchasePrice
    self.sellingPrice = sellingPrice
    self.bestByDate = bestByDate
  }

  public var id: BSONObjectID? {
    _id
  }
}
