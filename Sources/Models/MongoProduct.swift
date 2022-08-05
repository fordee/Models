//
//  File.swift
//  
//
//  Created by John Forde on 6/08/22.
//

import Foundation
import SwiftBSON

struct MongoProduct: Identifiable, Codable, MongoIdentifiable {
  var _id: BSONObjectID?
  var name: String
  var description: String
  var imagePath: String
  var stock: Int
  var averagePurchasePrice: Double
  var sellingPrice: Double
  var bestByDate: Date

  var id: BSONObjectID? {
    _id
  }
}
