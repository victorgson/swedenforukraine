//
//  CommunitiesRepository.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import Foundation
import Combine
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreCombineSwift

class CommunitiesRepository: FirestoreRepository {
    
    
    typealias T = CommunityModel
    
    @Published var communities: [CommunityModel] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    var db: Firestore {
        return Firestore.firestore()
    }
    
    
    init() {
        get().sink { completion in
            switch completion {
            case .finished:
                break
            case .failure(let err):
                assertionFailure(err.localizedDescription)
            }
        } receiveValue: { communities in
            self.communities = communities
        }.store(in: &cancellables)
        
    }
    
    func get() -> AnyPublisher<[CommunityModel], Error> {
        return Deferred {
            return self.db.collection(paths.communities.rawValue).getDocuments()
                .map { snapshot in
                snapshot.documents.compactMap { document in
                    return try? document.data(as: T.self)
                }
            }
        }.eraseToAnyPublisher()
        
    }
}
