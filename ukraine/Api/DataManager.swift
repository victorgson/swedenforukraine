//
//  DataManager.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-08.
//

import Foundation
import Combine
import Firebase
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift

class DataManager: ObservableObject {
    
    var apiManager = ApiManager()
    @Published var topics : [TopicModel] = []
    @Published var communities : [CommunityModel] = []
    @Published var emergencyNumbers : [EmergencyNumbersModel] = []
    @Published var isLoading: Bool = true

  
    var cancellables = Set<AnyCancellable>()
    
    
    init() {
  
        fetch()
  
    }

    
    func fetch(resetLoading: Bool = true) {
    
        if resetLoading {
            self.isLoading = true
        }
        
        apiManager.fetchTopics().receive(on: DispatchQueue.main).sink { completion in
            switch completion {
            case .finished:
                print("finished")
                break
            case .failure(let err):
                print(err)
            }
        } receiveValue: { response in
//            self.topics = response.topics
            self.communities = response.communities
            self.emergencyNumbers = response.emergencyNumbers
            self.isLoading = false
            
        }.store(in: &cancellables)
       
        
    }
    
}
