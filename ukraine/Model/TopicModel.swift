//
//  TopicModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import Foundation


struct TopicModel: Decodable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var subTopics: [SubTopicModel]
}
