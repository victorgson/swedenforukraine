//
//  FirestoreRepositoryProtocol.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import Combine
import FirebaseFirestore

enum paths: String {
   case topics, communities, emergency_numbers
}



protocol FirestoreRepository {
    associatedtype T: Decodable
    typealias A = T
    var db: Firestore { get }
    func get() -> AnyPublisher<[T], Error>
}
