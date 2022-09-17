//
//  Reservation.swift
//  
//
//  Created by John Forde on 21/08/22.
//

import Foundation
import SwiftBSON

public struct Reservation: Identifiable, Codable, MongoIdentifiable {
  public var id: String {
    reservationId
  }

  public var _id: BSONObjectID?

  public let reservationId: String
  public let status: String
  public let gestName: String
  public let contact: String
  public let adultsCount: Int
  public let childrenCount: Int
  public let infantCount: Int
  public let startDate: Date
  public let endDate: Date
  public let dayCount: Int
  public let bookingDate: Date
  public let listingDescription: String
  public let earnings: Double

  public init(_id: BSONObjectID? = nil, reservationId: String, status: String, gestName: String, contact: String, adultsCount: Int, childrenCount: Int, infantCount: Int, startDate: Date, endDate: Date, dayCount: Int, bookingDate: Date, listingDescription: String, earnings: Double) {
    self._id = _id
    self.reservationId = reservationId
    self.status = status
    self.gestName = gestName
    self.contact = contact
    self.adultsCount = adultsCount
    self.childrenCount = childrenCount
    self.infantCount = infantCount
    self.startDate = startDate
    self.endDate = endDate
    self.dayCount = dayCount
    self.bookingDate = bookingDate
    self.listingDescription = listingDescription
    self.earnings = earnings
  }
}
