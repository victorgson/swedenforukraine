//
//  ApiManager.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-08.
//

import Foundation
import Combine

import FirebaseFirestore
import FirebaseCore

protocol ApiProtocol {
    func fetchTopics() -> AnyPublisher<TopicResponse, Error>
}

class ApiManager: ApiProtocol {
    


    private let session = URLSession.shared
    
    func fetchTopics() -> AnyPublisher<TopicResponse, Error> {
        let baseUrl = Bundle.main.url(forResource: "data", withExtension: "json")!
        return Deferred { [self] in
            session.dataTaskPublisher(for: baseUrl)
                .tryMap() { element -> Data in

                    print(element.data)
                    return element.data
                }
                .decode(type: TopicResponse.self, decoder: JSONDecoder())
                .eraseToAnyPublisher()
        }.eraseToAnyPublisher()
    }
}
