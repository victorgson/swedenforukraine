//
//  TopicResponse.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-08.
//

import Foundation

struct CommunityModel: Codable, Identifiable {
    var id: Int
    var title: String
    var url: String
    
    enum CodingKeys: CodingKey {
        case id
        case title
        case url
    }
}

struct EmergencyNumbersModel: Codable, Identifiable {
    var id: Int
    var title: String
    var phoneNumber: String
    
    enum CodingKeys: CodingKey {
        case id
        case title
        case phoneNumber
    }
}

struct TopicResponse: Codable {
//    var topics : [TopicModel]
    var communities: [CommunityModel]
    var emergencyNumbers: [EmergencyNumbersModel]
    
    
    enum CodingKeys: CodingKey {
//        case topics
        case communities
        case emergencyNumbers
    }
}
