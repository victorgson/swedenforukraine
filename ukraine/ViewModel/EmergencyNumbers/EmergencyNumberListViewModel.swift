//
//  EmergencyNumberListViewModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import Foundation
import Combine

class EmergencyNumberListViewModel: ObservableObject {
    private let emergencyNumbersRepository = EmergencyNumberRepository()
    
    private var cancellables: Set<AnyCancellable> = []
    @Published var emergencyNumberViewModel: [EmergencyNumberViewModel] = []
    
    init() {
        emergencyNumbersRepository.$emergencyNumbers.map { emergencyNumber in
            emergencyNumber.map(EmergencyNumberViewModel.init)
        }
        .assign(to: \.emergencyNumberViewModel, on: self)
        .store(in: &cancellables)
    }
}



