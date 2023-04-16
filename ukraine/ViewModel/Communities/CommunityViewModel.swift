//
//  CommunityViewModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import Foundation
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

class CommunityViewModel: ObservableObject, Identifiable {
    
    private var cancellables: Set<AnyCancellable> = []
    @Published var community: CommunityModel
    
    var id: Int = 0
    
    init(community: CommunityModel) {
      self.community = community
      $community
        .compactMap { $0.id }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
    }
    
}
