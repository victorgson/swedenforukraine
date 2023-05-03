//
//  FirestoreRepositoryProtocol.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import Combine
import FirebaseFirestore

enum paths: String {
   case topics, communities, emergencyNumbers = "emergency_numbers", topicsForSwedes
    
    

}



protocol FirestoreRepository {
    associatedtype T: Decodable
    typealias A = T
    var db: Firestore { get }
    func get() -> AnyPublisher<[T], Error>
}
