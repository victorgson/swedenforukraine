//
//  SubTopicModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import Foundation



struct SubTopicModel: Codable, Identifiable {
    var id: Int
    var title: String
    var url: String
    var urlType: UrlType
    var description: String
    var imageUrl: String?
    
    enum CodingKeys: CodingKey {
        case id
        case title
        case url
        case urlType
        case description
        case imageUrl
    }
}
