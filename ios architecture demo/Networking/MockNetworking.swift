//
//  MockNetworking.swift
//  ios architecture demo
//
//  Created by Richmond Ko on 2023-06-05.
//

import Foundation

final class MockNetworking {
    
}

extension MockNetworking: GetPaymentMethodsClient {
    func getPaymentMethods() -> [PaymentMethod] {
        return [
            PaymentMethod(name: "some name", id: "some id"),
            PaymentMethod(name: "some name 2", id: "some id"),
            PaymentMethod(name: "some name 3", id: "some id")
        ]
    }
}
