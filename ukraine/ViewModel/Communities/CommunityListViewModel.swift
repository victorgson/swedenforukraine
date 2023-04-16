//
//  CommunityListViewModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import Foundation
import Combine

class CommunityListViewModel: ObservableObject {
    private let communityRepository = CommunitiesRepository()

    private var cancellables: Set<AnyCancellable> = []
    @Published var communityViewModel: [CommunityViewModel] = []
    
        init() {
            communityRepository.$communities.map { community in
                community.map(CommunityViewModel.init)
          }
            .assign(to: \.communityViewModel, on: self)
          .store(in: &cancellables)
        }
    }
    


