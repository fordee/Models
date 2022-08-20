//
//  File.swift
//  
//
//  Created by John Forde on 21/08/22.
//

import Foundation

public enum DatePointType {
  case start
  case middle
  case end
  case single
  case none
}

public struct DatePoint: Hashable {
  public let date: DateComponents
  public let datePointType: DatePointType
  public let reservationId: String
  public let iCalDescription: String

  public init(date: DateComponents, datePointType: DatePointType, reservationId: String, iCalDescription: String) {
    self.date = date
    self.datePointType = datePointType
    self.reservationId = reservationId
    self.iCalDescription = iCalDescription
  }
}
