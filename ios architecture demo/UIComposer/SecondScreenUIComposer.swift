//
//  SecondScreenUIComposer.swift
//  ios architecture demo
//
//  Created by Richmond Ko on 2023-06-05.
//

import Foundation
import UIKit
import SwiftUI

final class SecondScreenUIComposer {
    static func compose(service: GetPaymentMethodsService,
                        viewModelDelegate: SecondScreenViewModelDelegate) -> UIViewController {
        let viewModel = SecondScreenViewModel(service: service)
        viewModel.delegate = viewModelDelegate
        let view = SecondScreenView(secondScreenViewModel: viewModel)
        let vc = UIHostingController(rootView: view)
        return vc
    }
}
