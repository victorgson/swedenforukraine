//
//  TopicViewModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-13.
//

import Foundation
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine
class TopicViewModel: ObservableObject, Identifiable {
    private let topicRepository = TopicRepository()
    
    private var cancellables: Set<AnyCancellable> = []
    @Published var topic: TopicModel
    
    var id: Int = 0
    
    init(topic: TopicModel) {
      self.topic = topic
      // 5
      $topic
        .compactMap { $0.id }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
    }
    
}
    
