//
//  File.swift
//  
//
//  Created by John Forde on 6/08/22.
//

import Foundation
import SwiftBSON

public struct MongoProduct: Identifiable, Codable, MongoIdentifiable {
  public var _id: BSONObjectID?
  public var name: String
  public var description: String
  public var imagePath: String
  public var stock: Int
  public var averagePurchasePrice: Double
  public var sellingPrice: Double
  public var bestByDate: Date

  public var id: BSONObjectID? {
    _id
  }
}
