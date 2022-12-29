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
  public let reservation: Reservation

  public init(date: DateComponents, datePointType: DatePointType, reservation: Reservation) {
    self.date = date
    self.datePointType = datePointType
    self.reservation = reservation
  }
}
