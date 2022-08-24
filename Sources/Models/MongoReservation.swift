//
//  MongoReservation.swift
//  
//
//  Created by John Forde on 25/08/22.
//

import Foundation
import SwiftBSON

public struct MongoReservation: Identifiable, Codable, MongoIdentifiable {
  public var _id: BSONObjectID?
  public let reservationId: String
  public let startDate: Date
  public let endDate: Date
  public let iCalDescription: String
  public let uid: String

  public init(_id: BSONObjectID? = nil, reservationId: String, startDate: Date, endDate: Date, iCalDescription: String, uid: String) {
    self._id = _id
    self.reservationId = reservationId
    self.startDate = startDate
    self.endDate = endDate
    self.iCalDescription = iCalDescription
    self.uid = uid
  }

  public var id: String {
    reservationId
  }
}
