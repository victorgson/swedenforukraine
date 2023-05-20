//
//  TopicRepository.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-13.
//

import Foundation
import Combine
import SwiftUI
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift
import FirebaseFirestoreCombineSwift



class TopicRepository: ObservableObject, FirestoreRepository {
    
    typealias T = TopicModel
    
    private var cancellables = Set<AnyCancellable>()
    
    var db: Firestore {
        return Firestore.firestore()
    }
    
    @Published var topics: [TopicModel] = []
    
    init() {
        get().sink { completion in
            switch completion {
            case .finished:
                break
            case .failure(let err):
                assertionFailure(err.localizedDescription)
            }
        } receiveValue: { topics in
            self.topics = topics
        }.store(in: &cancellables)
    }
    
    enum APIError: LocalizedError {
        /// Invalid request, e.g. invalid URL
        case invalidRequestError(String)
    }
    
    func get() -> AnyPublisher<[TopicModel], Error> {
        
        return Deferred {
            
            return self.db.collection(Paths.topics.rawValue)
                .getDocuments()
                .tryMap { snapshot in
                    try snapshot.documents.compactMap { document in
                        try document.data(as: T.self)
                    }
                }
            
            
        }.eraseToAnyPublisher()
    }
}
