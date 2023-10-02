//
//  InvoicePersistenceWithoutOCP.swift
//  SOLID_iOS_Swift
//
//  Created by Sajib Ghosh on 02/10/23.
//

import Foundation

class InvoicePersistenceWithoutOCP {
    let invoice: Invoice
    init(invoice: Invoice) {
        self.invoice = invoice
    }
    func saveInvoiceToFile(){
        //Create a file and save the invoice
    }
    func saveInvoiceToCoreData(){
        //Saves invoice to coredata
    }
}
