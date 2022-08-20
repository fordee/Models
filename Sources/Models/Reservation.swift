//
//  Reservation.swift
//  
//
//  Created by John Forde on 21/08/22.
//

import Foundation
import SwiftBSON

public struct Reservation: Identifiable, Codable, MongoIdentifiable {
  public var _id: BSONObjectID?
  public let startDate: Date
  public let endDate: Date
  public let reservationId: String
  public let iCalDescription: String
  public let uid: String

  public init(_id: BSONObjectID? = nil, startDate: Date, endDate: Date, reservationId: String, iCalDescription: String, uid: String) {
    self._id = _id
    self.startDate = startDate
    self.endDate = endDate
    self.reservationId = reservationId
    self.iCalDescription = iCalDescription
    self.uid = uid
  }

  public var id: String {
    reservationId
  }

  public var startDateComponents: DateComponents {
    Calendar.current.dateComponents([.day, .month, .year], from: startDate)
  }
  public var endDateComponents: DateComponents {
    Calendar.current.dateComponents([.day, .month, .year], from: endDate)
  }
}
