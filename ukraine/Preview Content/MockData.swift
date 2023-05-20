//
//  MockData.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-20.
//

import Foundation


struct MockData {
    
    let subTopic = SubTopicModel(id: 0, title: "Test", url: "https://www.google.se", urlType: .website, description: "test")
    lazy var topic = TopicModel(id: 0, title: "Test", description: "Test", subTopics: [subTopic], imageUrl: "")
    
    let community = CommunityModel(id: 0, title: "asd", url: "https://www.google.se", imageUrl: "church")
    
    let emergency = EmergencyNumbersModel(id: 0, title: "asd", phoneNumber: "000")
}
