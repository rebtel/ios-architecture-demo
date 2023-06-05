//
//  FirstScreenInteractor.swift
//  ios architecture demo
//
//  Created by Richmond Ko on 2023-06-05.
//

import Foundation

protocol FirstScreenInteractorDelegate: AnyObject {
    func firstScreenDidTapSecondButton()
}

final class FirstScreenInteractor {
    private let getPaymentMethodsService: GetPaymentMethodsService
    private let presenter: FirstScreenPresenter
    var delegate: FirstScreenInteractorDelegate?
    
    init(getPaymentMethodsService: GetPaymentMethodsService,
         presenter: FirstScreenPresenter) {
        self.getPaymentMethodsService = getPaymentMethodsService
        self.presenter = presenter
    }
    
    private func getPaymentMethods() {
        let paymentMethods = getPaymentMethodsService.getPaymentMethods()
        let stringToDisplay = paymentMethods.map({ $0.name }).reduce("", { $0 == "" ? $1 : $0 + "," + $1 })
        self.presenter.updateLabel(with: stringToDisplay)
    }
}

extension FirstScreenInteractor: FirstScreenViewControllerDelegate {
    func firstScreenDidTapFirstButton() {
        print("did tap first button")
        getPaymentMethods()
    }
    
    func firstScreenDidTapSecondButton() {
        print("did tap second button")
        delegate?.firstScreenDidTapSecondButton()
    }
}
