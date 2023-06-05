//
//  SecondScreenViewModel.swift
//  ios architecture demo
//
//  Created by Richmond Ko on 2023-06-05.
//

import Foundation
//protocol SecondScreenViewModelDelegate: AnyObject {
//    func secondScreenDidTapAnotherButton()
//}
//
//final class SecondScreenViewModel: ObservableObject {
//    private var paymentMethods: [PaymentMethod] = []
//    private let service: GetPaymentMethodsService
//    @Published var stringToDisplay: String = "hello alper"
//    var delegate: SecondScreenViewModelDelegate?
//    
//    init(service: GetPaymentMethodsService) {
//        self.service = service
//    }
//    
//    private func getPaymentMethods() {
//        self.paymentMethods = self.service.getPaymentMethods()
//        self.stringToDisplay = paymentMethods.map({ $0.name }).reduce("", { $0 == "" ? $1 : $0 + "," + $1 })
//    }
//}
//
//// user interactions from view
//extension SecondScreenViewModel {
//    func didTapButton() {
//        getPaymentMethods()
//    }
//    
//    func didTapAnotherButton() {
//        delegate?.secondScreenDidTapAnotherButton()
//    }
//}
