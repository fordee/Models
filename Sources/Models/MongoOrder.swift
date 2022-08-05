//
//  File.swift
//  
//
//  Created by John Forde on 6/08/22.
//

import Foundation
import SwiftBSON

public enum OrderStatus: String, Codable {
  case submitted
  case cancelled
  case delivered
}

public struct MongoOrder: Identifiable, Codable, MongoIdentifiable {
  public var _id: BSONObjectID?
  public let reservationId: String
  public let status: OrderStatus
  public let paid: Bool
  public let submittedTime: Date
  public var deliveredTime: Date? = nil
  public var items: [MongoOrderItems] = []

  public var id: BSONObjectID? {
    _id
  }
}

public struct MongoOrderItems: Codable {
  public let product: MongoProduct
  public let quantity: Int
  public let price: Double
}

public struct CreateMongoOrder: Codable {
  public let reservationId: String
  public let status: OrderStatus
  public let paid: Bool
}

/// The structure of a status update request.
public struct StatusUpdate: Codable {
  public let status: OrderStatus
}

