//
//  MongoOrder.swift
//  
//
//  Created by John Forde on 6/08/22.
//

import Foundation
//import SwiftBSON
import MongoSwift

public enum OrderStatus: String, Codable, CaseIterable, RawRepresentable {
  case open
  case submitted
  case cancelled
  case delivered

//  public init?(rawValue: String) {
//    switch rawValue {
//    case "open":
//      self = .open
//    case "submitted":
//      self = .submitted
//    case "cancelled":
//      self = .cancelled
//    case "delivered":
//      self = .delivered
//    default:
//      self = .open
//    }
//  }
}

public enum PaymentMethod: String, Codable, CaseIterable, RawRepresentable {
  case internetBanking
  case cash
  case viaAirBnB
}

public struct MongoOrder: Identifiable, Codable, MongoIdentifiable {
  public var _id: BSONObjectID?
  public let reservationId: String
  public let status: OrderStatus
  public let paid: Bool
  public let submittedTime: Date
  public var deliveredTime: Date? = nil
  public var paymentMethod: PaymentMethod? = nil
  public var items: [MongoOrderItem] = []

  public init(_id: BSONObjectID? = nil, reservationId: String, status: OrderStatus, paid: Bool, submittedTime: Date, deliveredTime: Date? = nil, items: [MongoOrderItem] = []) {
    self._id = _id
    self.reservationId = reservationId
    self.status = status
    self.paid = paid
    self.submittedTime = submittedTime
    self.deliveredTime = deliveredTime
    self.items = items
  }

  public var id: BSONObjectID? {
    _id
  }
}

extension MongoOrder: Equatable {
  public static func == (lhs: MongoOrder, rhs: MongoOrder) -> Bool {
    lhs.id == rhs.id
  }
}

extension MongoOrder: Hashable {
  public func hash(into hasher: inout Hasher) {
      hasher.combine(id)
  }
}

public struct MongoOrderItem: Codable {
  public let product: MongoProduct
  public let quantity: Int
  public let price: Double

  public init(product: MongoProduct, quantity: Int, price: Double) {
    self.product = product
    self.quantity = quantity
    self.price = price
  }
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

public struct StatusItemsUpdate: Codable {
  public let status: OrderStatus
  public let items: [MongoOrderItem]

  public init(status: OrderStatus, items: [MongoOrderItem]) {
    self.status = status
    self.items = items
  }
}
