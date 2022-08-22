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
  public var productId: BSONObjectID
  public let quantity: Int
  public let price: Double
  public let purchaseDate: Date

  public init(_id: BSONObjectID? = nil, productId: BSONObjectID, quantity: Int, price: Double, purchaseDate: Date) {
    self._id = _id
    self.productId = productId
    self.quantity = quantity
    self.price = price
    self.purchaseDate = purchaseDate
  }

  public var id: BSONObjectID? {
    _id
  }
}
