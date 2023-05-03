//
//  TopicsForSwedesViewModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-03.
//

import Foundation

import Foundation
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

class TopicForSwedesViewModel: ObservableObject, Identifiable {
    
    private var cancellables: Set<AnyCancellable> = []
    @Published var topic: TopicModel
    
    var id: Int = 0
    
    init(topic: TopicModel) {
      self.topic = topic
      $topic
        .compactMap { $0.id }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
    }
}
