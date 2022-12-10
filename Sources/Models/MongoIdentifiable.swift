//
//  MongoIdentifiable.swift
//  
//
//  Created by John Forde on 6/08/22.
//

//import SwiftBSON
import MongoSwift

public protocol MongoIdentifiable {
  var _id: BSONObjectID? { get set }
}
