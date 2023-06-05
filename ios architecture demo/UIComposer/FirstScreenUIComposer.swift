//
//  FirstScreenUIComposer.swift
//  ios architecture demo
//
//  Created by Richmond Ko on 2023-06-05.
//

import Foundation

final class FirstScreenUIComposer {
    static func compose(getPaymentMethodsService: GetPaymentMethodsService,
                        interactorDelegate: FirstScreenInteractorDelegate) -> FirstScreenViewController {
        let vc = FirstScreenViewController(nibName: "FirstScreen", bundle: .main)
        let presenter = FirstScreenPresenter(view: vc)
        let interactor = FirstScreenInteractor(getPaymentMethodsService: getPaymentMethodsService, presenter: presenter)
        interactor.delegate = interactorDelegate
        vc.delegate = interactor
        return vc
    }
}
