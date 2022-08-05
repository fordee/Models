//
//  File.swift
//  
//
//  Created by John Forde on 6/08/22.
//

import SwiftBSON

protocol MongoIdentifiable {
  var _id: BSONObjectID? { get set }
}
