//
//  InvoicePrinter.swift
//  SOLID_iOS_Swift
//
//  Created by Sajib Ghosh on 02/10/23.
//

import Foundation
class InvoicePrinter {
    let invoice: Invoice
    init(invoice: Invoice) {
        self.invoice = invoice
    }
    func printInvoice(){
        print("Q.\(invoice.quantity) x \(invoice.book.name) $\(invoice.book.price)")
        print("Discount percentage :\(invoice.discountPercentage)%")
        print("Tax rate :\(invoice.taxRate)%")
        print("Total Amount :$\(invoice.total)")
    }
}
