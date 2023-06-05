//
//  GetPaymentMethodsService.swift
//  ios architecture demo
//
//  Created by Richmond Ko on 2023-06-05.
//

import Foundation

protocol GetPaymentMethodsService: AnyObject {
    func getPaymentMethods() -> [PaymentMethod]
}
