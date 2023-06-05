//
//  Coordinator.swift
//  ios architecture demo
//
//  Created by Richmond Ko on 2023-06-05.
//

import Foundation
import UIKit

final class Coordinator {
    private var state: State = .idle {
        didSet {
            handleState()
        }
    }
    
    private let navigationController: UINavigationController
    private let mockNetworkingClient: GetPaymentMethodsClient
    
    private enum State {
        case idle
        case firstScreen
        case secondScreen
        case thirdScreen
    }
    
    init(navigationController: UINavigationController,
         mockNetworkingClient: GetPaymentMethodsClient) {
        self.navigationController = navigationController
        self.mockNetworkingClient = mockNetworkingClient
    }
    
    func start() {
        self.state = .firstScreen
    }
    
    private func handleState() {
        switch self.state {
        case .idle: break
        case .firstScreen: pushFirstScreen()
        case .secondScreen: pushSecondScreen()
        case .thirdScreen: print("third screen")
        }
    }
}

// push function
extension Coordinator {
    private func pushFirstScreen() {
        let service = RemoteGetPaymentMethodsService(client: mockNetworkingClient)
        let vc = FirstScreenUIComposer.compose(getPaymentMethodsService: service,
                                               interactorDelegate: self)
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func pushSecondScreen() {
        let service = RemoteGetPaymentMethodsService(client: mockNetworkingClient)
        let vc = SecondScreenUIComposer.compose(service: service,
                                                viewModelDelegate: self)
        navigationController.pushViewController(vc, animated: true)
    }
}

extension Coordinator: FirstScreenInteractorDelegate {
    func firstScreenDidTapSecondButton() {
        self.state = .secondScreen
    }
}

extension Coordinator: SecondScreenViewModelDelegate {
    func secondScreenDidTapAnotherButton() {
        self.state = .thirdScreen
    }
}
