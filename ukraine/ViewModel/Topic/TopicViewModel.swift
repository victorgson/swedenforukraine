//
//  TopicViewModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-13.
//

import Combine
class TopicViewModel: ObservableObject, Identifiable {
    
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
    
