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

class TopicRepository: ObservableObject {
    
    @Published var db = Firestore.firestore()
    @Published var topics: [TopicModel] = []
    
    init() {
        get()
    }
    
    func add(_ topic: TopicModel) {
        do {
            try db.collection("topic").document(topic.title).setData(from: topic)
            
        } catch let error{
            fatalError("Unable to add card: \(error.localizedDescription).")
        }
    }
    
    func get() {
        
        db.collection("topics")
           .addSnapshotListener { querySnapshot, error in
             // 4
             if let error = error {
               print("Error getting cards: \(error.localizedDescription)")
               return
             }

             // 5
             self.topics = querySnapshot?.documents.compactMap { document in
               // 6
               try? document.data(as: TopicModel.self)
             } ?? []
           }

    }
}
