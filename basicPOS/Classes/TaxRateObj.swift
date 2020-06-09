//
//  TaxRateObj.swift
//  basicPOS
//
//  Created by Jean on 08/06/2020.
//

import Foundation

public struct TaxRateObj: BPTaxRate {
  // MARK: non-conforming properties
  
  // MARK: BPTaxRate
  public var id: Int?
  public var name: String?
  public var rate: Double?
  
  public init(id: Int?, name: String?, rate: Double?) {
    self.id = id
    self.rate = rate
    self.name = name
  }
}
