//
//  SecondScreeiView.swift
//  ios architecture demo
//
//  Created by Richmond Ko on 2023-06-05.
//

import SwiftUI

struct SecondScreenView: View {
    @ObservedObject var secondScreenViewModel: SecondScreenViewModel
    
    var body: some View {
        VStack {
            Spacer()
            Text(secondScreenViewModel.stringToDisplay)
            Spacer()
            Button {
                // do something
                secondScreenViewModel.didTapButton()
            } label: {
                Text("Some Button")
            }
            Button {
                // do something
                secondScreenViewModel.didTapAnotherButton()
            } label: {
                Text("Some Button")
            }
            Spacer()
        }
        
    }
}

struct SecondScreenView_Previews: PreviewProvider {
    static var previews: some View {
        let service = RemoteGetPaymentMethodsService(client: MockNetworking())
        let viewModel = SecondScreenViewModel(service: service)
        SecondScreenView(secondScreenViewModel: viewModel)
    }
}
