//
//  File.swift
//  
//
//  Created by John Forde on 21/08/22.
//

import Foundation

enum DatePointType {
  case start
  case middle
  case end
  case single
  case none
}

struct DatePoint: Hashable {
  let date: DateComponents
  let datePointType: DatePointType
  let reservationId: String
  let iCalDescription: String

  init(date: DateComponents, datePointType: DatePointType, reservationId: String, iCalDescription: String) {
    self.date = date
    self.datePointType = datePointType
    self.reservationId = reservationId
    self.iCalDescription = iCalDescription
  }
}
