//
//  ContentView.swift
//  SOLID_iOS_Swift
//
//  Created by Sajib Ghosh on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Text("SOLID PRINCIPLE!")
            .font(.title)
            .bold()
            .foregroundColor(.red)
                .padding()
    }
    
    init() {
        testSOLID()
    }
    
    func testSOLID() {
        
        //SRP
        let book = Book(id: "123", name: "SOLID", author: "Uncle Bob", description: "SOLID principles", price: 200)
        let invoiceWithoutSRP = InvoiceWithoutSRP(book: book, quantity: 2, discountPercentage: 10)
        invoiceWithoutSRP.printInvoice()
        
        //OCP
        let invoice = Invoice(book: book, quantity: 2, discountPercentage: 50, taxRate: 20)
        let invoicePrinter = InvoicePrinter(invoice: invoice)
        invoicePrinter.printInvoice()
        let invoicePersistence = InvoicePersistence(invoice: invoice)
        invoicePersistence.saveInvoiceToFile()
        
        //LSP1
        
        let dog: Animal = Dog()
        dog.eat() //calling eat() of Dog class, that means Dog class is substitutable for the Animal class, and can be used when Animal object is required, it follows LSP
        //dog.bark() - can't call this as bark() is not in Animal class
        
        //LSP2
        
        //Calling fake API
        let fakeAPI = FakeAPICall()
        //Pass an empty object of NSURLRequest
        let request = NSURLRequest()
        let error = fakeAPI.callAPI(request: request)
        if let customError = error as? CustomError {
            print("Request:\(customError.request)")
        }
        
        //ISP
        
        let superButton = SuperButton()
        superButton.didTap()
        superButton.didDoubleTap()
        superButton.didLongPress()
        
        let doubleTapButton = DoubleTapButton()
        doubleTapButton.didDoubleTap()
        
        //DIP
        
        let stripePayment = StripePayment()
        let payment = Payment(paymetMethod: stripePayment)
        payment.makePayment(amount: 200.0)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
