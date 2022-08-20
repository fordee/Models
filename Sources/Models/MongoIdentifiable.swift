//
//  MongoIdentifiable.swift
//  
//
//  Created by John Forde on 6/08/22.
//

import SwiftBSON

public protocol MongoIdentifiable {
  var _id: BSONObjectID? { get set }
}
