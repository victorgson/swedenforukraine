//
//  MainViewModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-13.
//

import Foundation
import Combine
import SwiftUI

class TopicListViewModel: ObservableObject {
    private let topicRepository = TopicRepository()
    
    let items = [GridItem(.fixed(120), spacing: 16), GridItem(.fixed(120), spacing: 16)]
    
    
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
    


