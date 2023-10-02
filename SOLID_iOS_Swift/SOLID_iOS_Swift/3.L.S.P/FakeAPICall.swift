//
//  FakeAPICall.swift
//  SOLID_iOS_Swift
//
//  Created by Sajib Ghosh on 02/10/23.
//

import Foundation

let requestKey: String = "NSURLRequestKey"

// This is an NSError subclass that provides additional functionality
class CustomError: NSError {
    var request: NSURLRequest? {
        return self.userInfo[requestKey] as? NSURLRequest
    }
}

class FakeAPICall{
    //This is a fake API call, it will always return an error, notice here the return type is NSError but we have passed CustomError which is a subclass of NSError
    func callAPI(request: NSURLRequest) -> NSError {
        let userInfo: [String:Any] = [requestKey : request]
        return CustomError(domain:"LSP.fakeAPI.com", code:999, userInfo: userInfo)
    }
}
