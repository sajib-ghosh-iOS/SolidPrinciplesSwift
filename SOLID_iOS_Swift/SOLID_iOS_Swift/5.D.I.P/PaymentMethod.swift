//
//  PaymentMethod.swift
//  SOLID_iOS_Swift
//
//  Created by Sajib Ghosh on 03/10/23.
//

import Foundation

protocol PaymentMethod{
    func pay(amount:Double)
}

class DebitCardPayment: PaymentMethod{
    func pay(amount: Double) {
        //Process Debit Card Payment
        print("---Paid through Debit Card---")
    }
}

class StripePayment: PaymentMethod{
    func pay(amount: Double) {
        //Process Stripe Payment
        print("---Paid through Stripe---")
    }
}

class UPIPayment: PaymentMethod{
    func pay(amount: Double) {
        //Process UPI Payment
        print("---Paid through UPI Card---")
    }
}

class ApplePayPayment: PaymentMethod{
    func pay(amount: Double) {
        //Process Apple Pay Payment
        print("---Paid through Apple Pay---")
    }
}


