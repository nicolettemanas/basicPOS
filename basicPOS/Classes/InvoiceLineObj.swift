//
//  InvoiceLineObj.swift
//  basicPOS
//
//  Created by Jean on 08/06/2020.
//

import Foundation

public struct InvoiceLineObj: BPInvoiceLine {
  // MARK: BPInvoiceLine
  public var id: Int
  public var product: BPProduct
  public var qty: Double
  public var discount: BPDiscountType?
  public var isTaxExempt: Bool
  public var taxRates: [BPTaxRate]
  public var isTaxInclusive: Bool
  
  // MARK: non-conforming properties & methods
  public init(invoice: BPInvoice,
       id: Int,
       product: BPProduct,
       qty: Double,
       discount: BPDiscountType? = nil,
       isTaxExempt: Bool = false,
       taxRates: [BPTaxRate] = [],
       isTaxInclusive: Bool = true) {
    
    self.id = id
    self.product = product
    self.qty = qty
    self.discount = discount ?? invoice.discountType
    self.isTaxExempt = isTaxExempt
    self.taxRates = taxRates
    self.isTaxInclusive = isTaxInclusive
    
    set(product: product, qty: qty, invoice: invoice, discount: self.discount)
  }
}
