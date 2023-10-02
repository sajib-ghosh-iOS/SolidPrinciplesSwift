//
//  DemoLSP.swift
//  SOLID_iOS_Swift
//
//  Created by Sajib Ghosh on 02/10/23.
//

import Foundation
class Animal{
    func eat(){
        print("Animal is eating")
    }
}
class Dog: Animal{
    override func eat() {
        print("Dog is eating")
    }
    func bark() {
        print("Dog is barking")
    }
}
