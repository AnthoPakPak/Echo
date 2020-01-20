//
//  RelativeDirectPointer.swift
//  Echo
//
//  Created by Alejandro Alonso
//  Copyright © 2019 - 2020 Alejandro Alonso. All rights reserved.
//

struct RelativeDirectPointer<Pointee>: RelativePointer {
  let offset: Int32
  
  func pointee(from ptr: UnsafeRawPointer) -> Pointee? {
    if offset == 0 {
      return nil
    }
    
    return address(from: ptr).pointee
  }
}

extension UnsafeRawPointer {
  func relativeDirectAddress<T>(as type: T.Type) -> UnsafePointer<T> {
    let relativePointer = RelativeDirectPointer<T>(
      offset: load(as: Int32.self)
    )
    return relativePointer.address(from: self)
  }
}
