//
//  InvoicePersistence.swift
//  SOLID_iOS_Swift
//
//  Created by Sajib Ghosh on 03/10/23.
//

import Foundation
class InvoicePersistenceOCP: InvoicePersistenceProtocol {
    let persistence: InvoicePersistenceProtocol
    init(persistence: InvoicePersistenceProtocol) {
        self.persistence = persistence
    }
    func save(invoice: Invoice) {
        persistence.save(invoice: invoice)
    }
}
