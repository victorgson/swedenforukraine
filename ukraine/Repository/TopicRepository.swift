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

    internal var cancellables = Set<AnyCancellable>()
    
    internal var db: Firestore {
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

    func get() -> AnyPublisher<[TopicModel], Error> {
        return Deferred {
            return self.db.collection(paths.topics.rawValue).snapshotPublisher().compactMap { snapshot in
                snapshot.documents.compactMap { document in
                      return try? document.data(as: T.self)
                }
            }
        }.eraseToAnyPublisher()
    }
}
