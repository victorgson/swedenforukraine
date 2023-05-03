//
//  emergencyNumberRepository.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import Foundation
import Combine
import FirebaseFirestore
import FirebaseFirestoreCombineSwift

class EmergencyNumberRepository: FirestoreRepository {
    
    var db: Firestore {
        return Firestore.firestore()
    }
    
    typealias T = EmergencyNumbersModel
    
    @Published var emergencyNumbers: [EmergencyNumbersModel] = []
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        get().sink { completion in
            switch completion {
            case .finished:
                break
            case .failure(let err):
                assertionFailure(err.localizedDescription)
            }
        } receiveValue: { emergencyNumbers in
            self.emergencyNumbers = emergencyNumbers
        }.store(in: &cancellables)
    }
    
    func get() -> AnyPublisher<[T], Error> {
        return Deferred {
            return self.db.collection(paths.emergencyNumbers.rawValue).snapshotPublisher().map { snapshot in
                snapshot.documents.compactMap { document in
                    return try? document.data(as: T.self)
                }
            }
        }.eraseToAnyPublisher()
        
    }
}
