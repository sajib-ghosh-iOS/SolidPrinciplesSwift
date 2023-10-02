//
//  Payment.swift
//  SOLID_iOS_Swift
//
//  Created by Sajib Ghosh on 03/10/23.
//

import Foundation


class Payment1{
    var debitCardPayment: DebitCardPayment?
    var stripePayment: StripePayment?
    var upiPayment: UPIPayment?
    var applePayPayment: ApplePayPayment?
}


class Payment{
    private let paymentMethod : PaymentMethod
    init(paymetMethod: PaymentMethod) {
        self.paymentMethod = paymetMethod
    }
    func makePayment(amount: Double) {
        paymentMethod.pay(amount: amount)
    }
}

