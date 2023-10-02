//
//  Invoice.swift
//  SOLID_iOS_Swift
//
//  Created by Sajib Ghosh on 02/10/23.
//

import Foundation
class Invoice {
    let book: Book
    let quantity: Int
    let discountPercentage: Double
    let taxRate: Double
    var total: Double{
        calculateTotal()
    }
    
    init(book: Book, quantity: Int, discountPercentage: Double, taxRate: Double) {
        self.book = book
        self.quantity = quantity
        self.discountPercentage = discountPercentage
        self.taxRate = taxRate
    }
    
    func calculateTotal() -> Double {
        let bookPrice = book.price
        let totalBookPrice = bookPrice * Double(quantity)
        let discountAmount = totalBookPrice * discountPercentage/100
        let amountWithDiscount = totalBookPrice - discountAmount
        let taxAmount = amountWithDiscount * taxRate/100
        let total = amountWithDiscount + taxAmount
        return total
    }
}
