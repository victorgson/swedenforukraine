//
//  TopicForSwedesListViewModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-03.
//

import Foundation
import Combine

class TopicForSwedesListViewModel: ObservableObject {
    private let topicRepository = TopicsForSwedesRepository()

    private var cancellables: Set<AnyCancellable> = []
    @Published var topicViewModels: [TopicViewModel] = []
    
        init() {
            topicRepository.$topics.map { topics in
                topics.map(TopicViewModel.init)
          }
          .assign(to: \.topicViewModels, on: self)
          .store(in: &cancellables)
        }
    }
    
