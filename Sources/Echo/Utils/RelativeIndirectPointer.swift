//
//  RelativeIndirectPointer.swift
//  Echo
//
//  Created by Alejandro Alonso
//  Copyright © 2019 Alejandro Alonso. All rights reserved.
//

struct RelativeIndirectPointer<T>: RelativePointer {
  typealias Pointee = UnsafePointer<T>
  
  let offset: Int32
  
  func pointee(from ptr: UnsafeRawPointer) -> Pointee? {
    if offset == 0 {
      return nil
    }
    
    return address(from: ptr).pointee
  }
}
