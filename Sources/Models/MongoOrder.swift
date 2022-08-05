//
//  File.swift
//  
//
//  Created by John Forde on 6/08/22.
//

import Foundation
import SwiftBSON

enum OrderStatus: String, Codable {
  case submitted
  case cancelled
  case delivered
}

struct MongoOrder: Identifiable, Codable, MongoIdentifiable {
  var _id: BSONObjectID?
  let reservationId: String
  let status: OrderStatus
  let paid: Bool
  let submittedTime: Date
  var deliveredTime: Date? = nil
  var items: [MongoOrderItems] = []

  var id: BSONObjectID? {
    _id
  }
}

struct MongoOrderItems: Codable {
  let product: MongoProduct
  let quantity: Int
  let price: Double
}

struct CreateMongoOrder: Codable {
  let reservationId: String
  let status: OrderStatus
  let paid: Bool
}

/// The structure of a status update request.
struct StatusUpdate: Codable {
  let status: OrderStatus
}

