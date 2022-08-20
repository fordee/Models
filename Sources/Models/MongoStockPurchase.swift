//
//  MongoStockPurchase.swift
//  
//
//  Created by John Forde on 21/08/22.
//

import Foundation
import SwiftBSON

public struct MongoStockPurchase: Identifiable, Codable, MongoIdentifiable {
  public var _id: BSONObjectID?
  public let quantity: Int
  public let price: Double
  public let purchaseDate: Date

  public init(_id: BSONObjectID? = nil, quantity: Int, price: Double, purchaseDate: Date) {
    self._id = _id
    self.quantity = quantity
    self.price = price
    self.purchaseDate = purchaseDate
  }

  public var id: BSONObjectID? {
    _id
  }
}
