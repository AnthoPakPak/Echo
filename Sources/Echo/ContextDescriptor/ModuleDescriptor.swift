//
//  ModuleDescriptor.swift
//  Echo
//
//  Created by Alejandro Alonso
//  Copyright © 2019 Alejandro Alonso. All rights reserved.
//

public struct ModuleDescriptor: ContextDescriptor, LayoutWrapper {
  typealias Layout = _ModuleDescriptor

  public let ptr: UnsafeRawPointer
  
  public var name: String {
    let offset = ptr.offset(of: 2, as: Int32.self)
    let address = layout._name.address(from: offset)
    return String(cString: address)
  }
}

struct _ModuleDescriptor {
  let _base: _ContextDescriptor
  let _name: RelativeDirectPointer<CChar>
}
