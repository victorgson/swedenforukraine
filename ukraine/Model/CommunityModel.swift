//
//  CommunityModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import Foundation
struct CommunityModel: Codable, Identifiable {
    var id: Int
    var title: String
    var subTitle: String?
    var url: String
    var imageUrl: String
    
    enum CodingKeys: CodingKey {
        case id
        case title
        case url
        case imageUrl
        case subTitle
    }
}
