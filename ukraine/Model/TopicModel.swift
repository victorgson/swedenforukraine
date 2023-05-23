//
//  TopicModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import Foundation
struct TopicModel: Codable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var subTopics: [SubTopicModel]
    var imageUrl: String
    
    enum CodingKeys: CodingKey {
        case id
        case title
        case description
        case subTopics
        case imageUrl
    }
}
