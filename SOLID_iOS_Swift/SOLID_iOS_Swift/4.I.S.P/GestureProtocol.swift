//
//  GestureProtocol.swift
//  SOLID_iOS_Swift
//
//  Created by Sajib Ghosh on 03/10/23.
//

import Foundation

protocol GestureProtocol{
    func didTap()
    func didDoubleTap()
    func didLongPress()
}

protocol SingleTapProtocol{
    func didTap()
}
protocol DoubleTapProtocol{
    func didDoubleTap()
}
protocol LongPressProtocol{
    func didLongPress()
}
