//
//  Invoice.swift
//  SOLID_iOS_Swift
//
//  Created by Sajib Ghosh on 02/10/23.
//

import Foundation

class InvoiceWithoutSRP {
    
    let book: Book
    let quantity: Int
    let discountPercentage: Double
    var total: Double{
        calculateTotal()
    }
    
    init(book: Book, quantity: Int, discountPercentage: Double) {
        self.book = book
        self.quantity = quantity
        self.discountPercentage = discountPercentage
    }
    
    func calculateTotal() -> Double {
        let bookPrice = book.price
        let totalBookPrice = bookPrice * Double(quantity)
        let discountAmount = totalBookPrice * discountPercentage/100
        let total = totalBookPrice - discountAmount
        return total
    }
    
    func printInvoice(){
        print("\(quantity) x \(book.name) $\(book.price)")
        print("Discount percentage \(discountPercentage)%")
        print("Total :$\(total)")
    }
    
    func saveInvoice(){
        //Create a file and save the invoice
    }
}
