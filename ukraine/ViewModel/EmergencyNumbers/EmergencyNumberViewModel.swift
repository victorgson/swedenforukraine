//
//  EmergencyNumberViewModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import Foundation
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

class EmergencyNumberViewModel: ObservableObject, Identifiable {
    
    private var cancellables: Set<AnyCancellable> = []
    @Published var emergencyNumber: EmergencyNumbersModel
    
    var id: Int = 0
    
    init(emergencyNumber: EmergencyNumbersModel) {
      self.emergencyNumber = emergencyNumber
      $emergencyNumber
        .compactMap { $0.id }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
    }
    
}
