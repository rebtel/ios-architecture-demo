//
//  AlternateNetworkingClient.swift
//  ios architecture demo
//
//  Created by Richmond Ko on 2023-06-05.
//

import Foundation

final class AlternateNetworkingClient {
    
}

extension AlternateNetworkingClient: GetPaymentMethodsClient {
    func getPaymentMethods() -> [PaymentMethod] {
        return [
            PaymentMethod(name: "graph ql payment method", id: "some id"),
            PaymentMethod(name: "graph ql payment method 2", id: "some id"),
            PaymentMethod(name: "graph ql payment method 3", id: "some id"),
            PaymentMethod(name: "graph ql payment method 4", id: "some id")
        ]
    }
}
